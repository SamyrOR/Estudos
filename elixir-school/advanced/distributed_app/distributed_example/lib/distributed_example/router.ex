defmodule DistributedExample.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do
    response = "<h1>DistributedExample</h1>"

    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, response)
  end

  get "/get" do
    cache = Cache.get()

    response =
      %{
        actual_node: node(),
        time: DateTime.utc_now()
      }
      |> Map.merge(cache)
      |> Jason.encode!()

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, response)
  end

  get "/put" do
    %{"key" => key, "value" => value} = URI.decode_query(conn.query_string)

    Cache.put(key, value)
    cache = Cache.get()

    response =
      %{time: DateTime.utc_now()}
      |> Map.merge(cache)
      |> Jason.encode!()

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, response)
  end

  get _ do
    response = "<h1>404 Router note found</h1>"

    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, response)
  end
end
