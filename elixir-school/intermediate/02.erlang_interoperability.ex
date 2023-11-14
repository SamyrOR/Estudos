#Standard library
#Erlang libraries can be accessed from any Elixir code
#they are represented with atoms like :os, :timer
defmodule Example do
  @moduledoc """
    Example of Erlang interoperability
    :timer.tc
  """
  @doc """
    Print the time
  """
  def timed(fun, args) do
    {time, result} = :timer.tc(fun, args)
    IO.puts("Time: #{time} μs")
    IO.puts("Result: #{result}")
  end
end

Example.timed(fn (n) -> (n * n) * n end, [100])

#Erlang packages also could been instaled, if it is not at Hex
#put the git repository instead
def deps do
  [{:png, github: "youce/png"}]
end

#Erlang atoms
example
#Elixir atoms
:example

#Erlang Strings are char lists
#While Elixir strings are UTF-8 encoded binaries
#its important to note that many older Erlang libraries not support binaries
#but is easy to convert Elixir String to char list with to_charlist/1

#Variables
#in Erlang the variables begin with uppercase letter and re-bind is not allowed
