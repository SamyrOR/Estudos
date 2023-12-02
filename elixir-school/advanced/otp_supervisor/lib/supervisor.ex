defmodule OtpSupervisor.Supervisor do
  use Supervisor

  def init(:ok) do
    children = [{OtpSupervisor, [1, 2, 3]}]
    # We have three diferente strategies
    # one_for_one, one_for_all, rest_for_one
    Supervisor.init(children, strategy: :one_for_one)
  end

  def start_link(opts) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end
end
