defmodule PlayerSupervisor do
  use DynamicSupervisor

  def init(:ok) do
    DynamicSupervisor.init(strategy: :one_for_one)
  end

  def start_link do
    DynamicSupervisor.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def add_player(name, game_id) do
    spec = {Player, {name, game_id}}
    DynamicSupervisor.start_child(__MODULE__, spec)
  end

  def remove_player(pid), do: DynamicSupervisor.terminate_child(__MODULE__, pid)

  def players, do: DynamicSupervisor.which_children(__MODULE__)

  def total, do: DynamicSupervisor.count_children(__MODULE__)
end

