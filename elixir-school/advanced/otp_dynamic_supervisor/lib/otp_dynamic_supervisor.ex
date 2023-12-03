defmodule OtpDynamicSupervisor do
  def start(game_id \\ "game_1") do
    Game.start_link(game_id)
    PlayerSupervisor.start_link()
  end

  def add_player(name, game_id), do: PlayerSupervisor.add_player(name, game_id)

  def remove_player(name, game_id) do
    players()
    |> Enum.each(fn
      %{game_id: ^game_id, name: ^name, pid: pid} ->
        PlayerSupervisor.remove_player(pid)

      _ ->
        nil
    end)
  end

  def players do
    for {_, pid, _, [module]} <- PlayerSupervisor.players() do
      apply(module, :get, [pid])
    end
  end

  def total, do: PlayerSupervisor.total()
end
