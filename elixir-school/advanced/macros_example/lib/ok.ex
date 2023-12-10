defmodule OK do
  defmacro __using__(_) do
    quote do
      require OK
      import OK
    end
  end

  defmacro a ~> {name, params, args} do
    x = quote do: x
    args = [x | args || []]

    quote do
      OK.map(unquote(a), fn unquote(x) -> unquote({name, params, args}) end)
    end
  end

  def map({:ok, value}, fun) when is_function(fun, 1), do: fun.(value)
  def map({:error, _reason} = error, _fn), do: error

  def success(value), do: {:ok, value}
end
