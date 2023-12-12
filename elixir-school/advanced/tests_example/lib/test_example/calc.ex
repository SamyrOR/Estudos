defmodule TestsExample.Calc do
  @spec sum(integer, integer) :: integer
  def sum(a, b), do: a + b

  @spec sub(integer, integer) :: integer
  def sub(a, b), do: a - b

  @spec mult(integer, integer) :: integer
  def mult(a, b), do: a * b

  @spec divide(integer, integer) :: number
  def divide(a, b), do: a / b
end
