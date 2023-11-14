defmodule Executables04Test do
  use ExUnit.Case
  doctest Executables04

  test "greets the world" do
    assert Executables04.hello() == :world
  end
end
