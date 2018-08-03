defmodule CoinmarkerApi do

  def bitcoin(url) do

    request(url)
    |> body
    |> parse_body_to_json
    |> parse_json_to_map
    |> create_balance
    |> show_balance
  end

  defp body(response) do
    response.body
  end

  defp parse_body_to_json(body) do
    Poison.Parser.parse(body)
  end

  defp parse_json_to_map(json) do
    elem(json, 1) |> Enum.at(0)
  end

  defp create_balance(map) do
    "> #{map["name"]}(#{map["symbol"]}) current price : $#{map["price_usd"]} Dolars."
  end

  defp show_balance(balance) do
    IO.puts balance
  end

  defp request(url) do
    HTTPotion.get(url)
  end

end
