defmodule BottlesTest do
  use ExUnit.Case
  doctest Bottles

  test "sing a song" do
    Bottles.sing_me_a_song([Unit.carton, Unit.six_pack, Unit.single], 99)
    |> IO.puts
  end
end
