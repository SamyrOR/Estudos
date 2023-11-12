defmodule Documentation12Test do
  use ExUnit.Case
  doctest Documentation12

  test "greets the world" do
    assert Documentation12.hello() == :world
  end
end
