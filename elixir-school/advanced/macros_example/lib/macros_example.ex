defmodule MacrosExample do
  use OK

  @doc """
     iex> MacrosExample.run()
     {:ok, "Avenida Paulista, 2100, Bela Vista, São Paulo, SP"}

     iex> MacrosExample.run("0131")
     {:error, :api_error}
  """
  def run(cep \\ "01310930") do
    # {:ok, cep} |> search_cep() |> handle_json() |> format_result()
    {:ok, cep} ~> search_cep() ~> handle_json() ~> format_result()
  end

  def search_cep(cep) do
    HTTPoison.get("https://viacep.com.br/ws/#{cep}/json/")
    |> case do
      {:ok, %{body: body, status_code: 200}} -> {:ok, body}
      _ -> {:error, :api_error}
    end
  end

  # def search_cep(error), do: error

  def handle_json(body) do
    Jason.decode(body)
    |> case do
      {:ok, value} -> {:ok, value}
      _ -> {:error, :decode_json_error}
    end
  end

  def format_result(json) do
    [
      json["logradouro"],
      json["complemento"],
      json["bairro"],
      json["localidade"],
      json["uf"]
    ]
    |> Enum.filter(&(String.length(&1) > 0))
    |> Enum.join(", ")
    |> success()
  end
end
