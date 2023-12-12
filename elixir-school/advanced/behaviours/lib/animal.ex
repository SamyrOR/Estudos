defmodule Animal do
  @callback name() :: {:ok, String.t()}
  @callback expression() :: {:ok, String.t()}
  def get_name(animal) do
    animal.name()
  end

  def expression(animal) do
    animal.expression()
  end
end
