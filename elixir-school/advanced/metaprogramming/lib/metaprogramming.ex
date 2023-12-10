defmodule Metaprogramming do
  defmacro if_false(expr, do: block) do
    quote do
      if !unquote(expr), do: unquote(block)
    end
  end
end
