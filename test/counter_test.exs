defmodule CounterTest do
  use ExUnit.Case
  import Unit
  doctest Counter

  test "Count Plural" do
    assert "10 bottles" === Counter.count([Unit.single], 10)
  end

  test "Count Single" do
    assert "1 bottle" === Counter.count([Unit.single], 1)
  end

  test "Count with multiplier" do
    assert "1 6-pack" === Counter.count([Unit.six_pack], 10)
  end

  test "Count with multiple units" do
    assert "1 6-pack, 4 bottles" === Counter.count([Unit.six_pack, Unit.single], 10)
  end

  test "Count with cartons units" do
    assert "1 carton, 1 bottle" === Counter.count([Unit.carton, Unit.six_pack, Unit.single], 25)
  end
end
