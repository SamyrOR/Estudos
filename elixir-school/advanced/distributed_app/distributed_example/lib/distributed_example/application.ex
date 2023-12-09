defmodule DistributedExample.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    {port, _} = System.get_env("PORT", "4000") |> Integer.parse()
    bandit_options = [port: port]

    topologies = [
      distributed_example: [
        strategy: Cluster.Strategy.Epmd,
        # config: [hosts: [:player1@Samyr, :player2@Samyr]]
        config: [hosts: [:app@api_1, :app@api_2, :app@api_3]]
      ]
    ]

    children = [
      {CacheSupervisor, []},
      {Cluster.Supervisor, [topologies, [name: DistributedExample.ClusterSupervisor]]},
      {Bandit, plug: DistributedExample.Router, scheme: :http, options: bandit_options}
    ]

    opts = [strategy: :one_for_one, name: DistributedExample.Supervisor]
    started = Supervisor.start_link(children, opts)
    :timer.sleep(1000)
    CacheSupervisor.start()

    spawn(fn ->
      :net_kernel.monitor_nodes(true, %{nodedown_reason: true})
      loop()
    end)

    started
  end

  def loop() do
    receive do
      {:nodedown, _, _} ->
        :timer.sleep(:rand.uniform(1000))
        if !is_pid(:global.whereis_name(Cache)), do: CacheSupervisor.start()

      _ ->
        nil
    end

    loop()
  end
end
