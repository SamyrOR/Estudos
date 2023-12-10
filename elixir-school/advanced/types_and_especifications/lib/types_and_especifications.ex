defmodule TypesAndEspecifications do
  @spec sum(integer, integer) :: integer
  def sum(a, b) do
    a + b
  end

  @spec call_type() :: Type.t()
  def call_type() do
    %Type{name: "Samyr", age: 28}
  end
end
