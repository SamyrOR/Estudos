defmodule TestsExampleTest do
  use ExUnit.Case
  doctest TestsExample

  test "greets the world" do
    assert TestsExample.hello() == :world
  end
end
