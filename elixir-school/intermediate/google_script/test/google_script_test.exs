defmodule GoogleScriptTest do
  use ExUnit.Case
  doctest GoogleScript

  test "greets the world" do
    assert GoogleScript.hello() == :world
  end
end
