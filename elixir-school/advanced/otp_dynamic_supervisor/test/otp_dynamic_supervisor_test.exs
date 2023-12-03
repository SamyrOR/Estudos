defmodule OtpDynamicSupervisorTest do
  use ExUnit.Case
  doctest OtpDynamicSupervisor

  test "greets the world" do
    assert OtpDynamicSupervisor.hello() == :world
  end
end
