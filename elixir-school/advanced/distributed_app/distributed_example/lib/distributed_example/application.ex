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
      {Cache, []},
      {Cluster.Supervisor, [topologies, [name: DistributedExample.ClusterSupervisor]]},
      {Bandit, plug: DistributedExample.Router, scheme: :http, options: bandit_options}
    ]

    opts = [strategy: :one_for_one, name: DistributedExample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
