defmodule Applications.Application do
  use Application

  def start(_type, _args) do
    Applications.Supervisor.start_link([])
  end
end
