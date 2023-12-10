defmodule Applications.Supervisor do
  use Supervisor

  def init(_), do: {:ok, nil}

  def start_link(_) do
    children = [
      {Actor, []}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: __MODULE__)
  end
end
