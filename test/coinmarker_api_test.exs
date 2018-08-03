defmodule CoinmarkerApiTest do
  use ExUnit.Case
  doctest CoinmarkerApi

  test "greets the world" do
    assert CoinmarkerApi.hello() == :world
  end
end
