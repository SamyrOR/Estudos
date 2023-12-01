defmodule GoogleScript do
  @moduledoc """
  false
  """

  def main(args \\ []) do
    {opts, value} = parse_args(args)
    output = opts[:output] || "busca"
    encoded = URI.encode_query(%{q: value})
    path = "https://google.com.br/search?#{encoded}"
    IO.puts("O valor de entrada: #{value} e salvando em #{output}")

    HTTPoison.get(path, [], follow_redirect: true)
    |> case do
      {:ok, %{body: html}} ->
        {:ok, doc} = Floki.parse_document(html)

        data =
          doc
          |> Floki.find("div.Gx5Zad")
          |> Enum.with_index(1)
          |> Enum.map(fn {row, index} ->
            title =
              row
              |> Floki.find("div.BNeawe.vvjwJb.AP7Wnd")
              |> Floki.text()

            "#{index}. #{title}"
          end)
          |> Enum.join("\n")

        path = File.cwd!() <> "/#{output}.txt"
        File.write(path, data, [:write, {:encoding, :latin1}])

        IO.puts("Deu certo, #{path}")

      {:error, _} ->
        IO.puts("Erro, na busca")
    end
  end

  def parse_args(args) do
    {opts, value, _} = OptionParser.parse(args, switches: [output: :string])

    {opts, Enum.join(value, " ")}
  end
end
