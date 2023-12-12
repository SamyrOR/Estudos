defimpl String.Chars, for: Tuple do
  def to_string(value) do
    result = value |> Tuple.to_list() |> Enum.join(", ")
    "{#{result}}"
  end
end
