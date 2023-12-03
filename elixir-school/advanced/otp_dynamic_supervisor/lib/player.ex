defmodule Player do
  use GenServer

  def init({name, game_id}) do
    pid = self()
    {:ok, %{name: name, game_id: game_id, pid: pid}}
  end

  def start_link({name, game_id}) do
    GenServer.start_link(__MODULE__, {name, game_id}, name: {:global, "player:#{name}"})
  end

  def handle_call(:get, _from, state) do
    {:reply, state, state}
  end

  ## Public functions
  def get(pid), do: GenServer.call(pid, :get)
end
