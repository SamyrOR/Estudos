defmodule TestsExample.CalcTest do
  use ExUnit.Case

  describe "Calculator" do
    setup do
      [a: 2, b: 3]
    end

    test "should sum two numbers", state do
      assert(5 = TestsExample.Calc.sum(state[:a], state[:b]))
    end

    test "should subtract two numbers" do
      assert(4 = TestsExample.Calc.sub(5, 1))
    end

    test "should multiply two numbers" do
      assert(6 = TestsExample.Calc.mult(2, 3))
    end

    test "should divide two numbers" do
      assert(2.0 = TestsExample.Calc.divide(4, 2))
    end
  end
end
