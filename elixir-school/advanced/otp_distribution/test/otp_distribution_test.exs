defmodule OtpDistributionTest do
  use ExUnit.Case
  doctest OtpDistribution

  test "greets the world" do
    assert OtpDistribution.hello() == :world
  end
end
