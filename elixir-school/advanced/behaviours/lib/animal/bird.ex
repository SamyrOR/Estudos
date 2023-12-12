defmodule Animal.Bird do
  @behaviour Animal

  def name, do: {:ok, "Bird"}
  def expression, do: {:ok, "Piu Piu"}
end
