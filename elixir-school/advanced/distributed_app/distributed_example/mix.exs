defmodule DistributedExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :distributed_example,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {DistributedExample.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.15"},
      {:bandit, "~> 0.6.2"},
      {:jason, "~> 1.4"},
      {:libcluster, "~> 3.3"}
    ]
  end
end
