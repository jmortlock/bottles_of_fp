defmodule Counter do
  import Unit

  def count(units, 0) do
    single = Enum.find(units, & &1.divider == 1)
    Unit.to_string(single, 0)
  end

  def count(units, value) do
    Enum.map_reduce(units, value, fn(x, acc) ->
      quantity = whole_units(x, acc)
      { build_str(x, quantity), acc - (quantity * x.divider) }
    end)
    |> elem(0)
    |> Enum.reject(& is_nil(&1))
    |> Enum.join(", ")
  end

  defp whole_units(unit, value) do
    Integer.floor_div(value, unit.divider)
  end

  defp build_str(_, 0), do: nil
  defp build_str(unit, quantity), do: Unit.to_string(unit, quantity)
end
