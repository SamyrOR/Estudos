defmodule OtpSupervisor do
  use GenServer

  def init(state), do: {:ok, state}

  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def handle_call(:show, _, state), do: {:reply, state, state}
  def handle_call(:remove, _, [value | state]), do: {:reply, value, state}

  # public functions
  def show_items, do: GenServer.call(__MODULE__, :show)
  def remove, do: GenServer.call(__MODULE__, :remove)
end
