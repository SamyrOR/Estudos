defmodule Executables04 do
  @moduledoc """
  Documentation for `Executables04`.
  """

  @doc """
  escript CLI executable

  ## Examples

      iex> Executables04.hello()
      :world

  """
  def main(args \\ []) do
    args
    |> parse_args()
    |> response()
    |> IO.puts()
  end

  defp parse_args(args) do
    {opts, word, _} = args |> OptionParser.parse(switches: [upcase: :boolean])

    {opts, List.to_string(word)}
  end

  defp response({opts, word}) do
    if opts[:upcase], do: String.upcase(word), else: word
  end
end
