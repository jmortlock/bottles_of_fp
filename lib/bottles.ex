defmodule Bottles do
  def sing_me_a_song(units \\ [Unit.single], start_verse) do
    for n <- start_verse..0, do: verse(n, units, start_verse)
  end

  defp verse(0, units, start_verse) do
    ~s"""
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, #{bottles(units, start_verse)} of beer on the wall.
    """
  end

  defp verse(verse_number, units, _) do
    ~s"""
    #{bottles(units, verse_number)} of beer on the wall, #{bottles(units, verse_number)} of beer.
    Take one down and pass it around, #{bottles(units, verse_number-1)} of beer on the wall.
    """
  end

  defp bottles(units, 0) do
    single = Enum.find(units, & &1.divider == 1)
    "0 #{single.plural}"
  end

  defp bottles(units, verse_number) do
    Counter.count(units, verse_number)
  end
end
