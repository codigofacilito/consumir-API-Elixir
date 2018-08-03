defmodule Mix.Tasks.MixCoinMarket do

  use Mix.Task

  @shortdoc "Get the current bitcoin price"
  def run(_) do
    CoinmarkerApi.bitcoin("https://api.coinmarketcap.com/v1/ticker/bitcoin/")
  end

end
