defmodule OtpConcurrency do
  # GenServer creates a alive process on our application
  use GenServer

  # this is enough to start our GenServer with a state
  def init(state), do: {:ok, state}

  def start_link(state \\ []) do
    # __MODULE__ refers to the own module
    # we also can name our GenServer to avoid aways the need of the pid
    GenServer.start_link(__MODULE__, state, name: MyGen)
  end

  ## handling the call synchronously 
  def handle_call(:remove, _from, [value | state]) do
    {:reply, value, state}
  end

  def handle_call(:remove, _, []), do: {:reply, nil, []}

  def handle_call(:items, _from, state) do
    {:reply, state, state}
  end

  ## handling the call asynchronously
  def handle_cast({:add, value}, state) do
    {:noreply, state ++ [value]}
  end

  # Public functions
  def show_items(), do: GenServer.call(MyGen, :items)
  def remove(), do: GenServer.call(MyGen, :remove)
  def add(value), do: GenServer.cast(MyGen, {:add, value})
end
