defprotocol Prot do
  @spec print(t) :: :ok
  def print(value)
end

defimpl Prot, for: BitString do
  def print(value), do: IO.puts(value)
end
