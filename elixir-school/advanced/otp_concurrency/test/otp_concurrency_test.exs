defmodule OtpConcurrencyTest do
  use ExUnit.Case
  doctest OtpConcurrency

  test "greets the world" do
    assert OtpConcurrency.hello() == :world
  end
end
