defmodule Bottles do
  def sing_me_a_song(start_verse) do
    for n <- start_verse..0, do: verse(n, start_verse)
  end

  defp verse(2,_) do
    ~s"""
    2 bottles of beer on the wall, 2 bottles of beer.
    Take one down and pass it around, 1 bottle of beer on the wall.
    """
  end

  defp verse(1,_) do
    ~s"""
    1 bottle of beer on the wall, 1 bottle of beer.
    Take it down and pass it around, no more bottles of beer on the wall.
    """
  end

  defp verse(0, start_verse) do
    ~s"""
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, #{start_verse} bottles of beer on the wall.
    """
  end

  defp verse(verse_number, _) do
    ~s"""
    #{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.
    Take one down and pass it around, #{verse_number-1} bottles of beer on the wall.
    """
  end
end
