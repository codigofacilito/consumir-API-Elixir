defmodule CoinmarkerApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :coinmarker_api,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      default_task: "mix_coin_market",
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
      [applications: [:logger, :httpotion]]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpotion, "~> 3.1.0"},
      {:poison, "~> 3.1"}
    ]
  end
end
