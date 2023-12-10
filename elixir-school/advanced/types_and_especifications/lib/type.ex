defmodule Type do
  defstruct [:name, :age]

  @typedoc """
    type definition of Type struct
  """
  @type t :: %Type{name: String.t(), age: integer}
end
