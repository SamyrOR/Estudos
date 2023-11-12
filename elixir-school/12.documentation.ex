#Documentation
# #inline documentation
#@moduledoc - module level documentation
#@doc - function level documentation

defmodule Greeter do
  @moduledoc """
  Provides a function `hello/1` to greet a human
  """

  @doc """
  Prints a hello message.

  ## Parameters

    - name: String that represents the name of the person

  ## Examples

    Greeter.hello("Samyr")
    "Hello, Samyr"

    Greeter.hello("World")
    "Hello, World"

  """
  @spec hello(String.t()) :: String.t()
  def hello(name) do
    "Hello, #{name}"
  end
end

#Best Practices
#Always document a module
#if you really not want to document, don't leave it blank
#add @moduleodc false
#when refer functions in documentation, use backticks like
# This module also has a `hello/1`
#separate all code one line under the @moduledoc
#use Markdown syntax inside the docs
