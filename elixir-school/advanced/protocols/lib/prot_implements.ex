defimpl Prot, for: Number do
  def print(value), do: IO.puts(value)
end

defimpl Prot, for: List do
  def print(value), do: Enum.join(value, ", ") |> IO.puts()
end

defimpl Prot, for: Tuple do
  def print(value), do: Tuple.to_list(value) |> Enum.join(", ") |> IO.puts()
end
