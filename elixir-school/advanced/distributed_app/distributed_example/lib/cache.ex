defmodule Cache do
  use GenServer
  require Logger

  def init(_) do
    {:ok, %{node: node()}}
  end

  def start_link(_) do
    GenServer.start_link(__MODULE__, [], name: {:global, __MODULE__})
    |> case do
      {:ok, pid} ->
        spawn_node = __MODULE__.get()[:node]
        Logger.info("Stated cache at node: 
          #{spawn_node}")
        {:ok, pid}

      {:error, _} ->
        spawn_node = __MODULE__.get()[:node]
        Logger.warning("Cache already initialized at node: 
          #{spawn_node}")
        {:ok, nil}
    end
  end

  def handle_call(:get, _from, state) do
    {:reply, state, state}
  end

  def handle_cast({:put, key, value}, state) do
    state = Map.put(state, key, value)
    {:noreply, state}
  end

  def handle_cast(:sync, state) do
    :rpc.multicall(Node.list(), __MODULE__, :put_state, [state])
    {:noreply, state}
  end

  def handle_cast({:put_state, state}, _state) do
    {:noreply, state}
  end

  def put(key, value), do: GenServer.cast({:global, __MODULE__}, {:put, key, value})
  def put_state(state), do: GenServer.cast({:global, __MODULE__}, {:put_state, state})

  def get, do: GenServer.call({:global, __MODULE__}, :get)

  def sync, do: GenServer.cast({:global, __MODULE__}, :sync)
end
