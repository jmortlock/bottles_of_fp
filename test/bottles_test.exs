defmodule BottlesTest do
  use ExUnit.Case
  doctest Bottles

  test "sing a song" do
    Bottles.sing_me_a_song(10)
    |> IO.puts
  end
end
