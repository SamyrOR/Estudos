defmodule Game do
  use GenServer

  def init(game_id) do
    {:ok, %{game_id: game_id}}
  end

  def start_link(game_id) do
    GenServer.start_link(__MODULE__, game_id: game_id, name: {:global, "game: #{game_id}"})
  end
end
