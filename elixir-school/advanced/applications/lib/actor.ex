defmodule Actor do
  use GenServer

  def init(_) do
    {:ok, nil}
  end

  def start_link(_) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end
end
