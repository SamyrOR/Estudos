defmodule OtpDistribution do
  def receive_message(message) do
    IO.puts(message)
  end

  def send_message(node, message) do
    {OtpDistribution.TaskSupervisor, node}
    |> Task.Supervisor.async(__MODULE__, :receive_message, [message])
    |> Task.await()
  end
end
