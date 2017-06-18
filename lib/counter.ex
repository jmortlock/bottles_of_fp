defmodule Counter do
  def count(units, value) do
    Enum.map_reduce(units, value, fn(x, acc) ->
      quantity = whole_units(x, acc)
      { build_str(quantity, x), acc - (quantity * x.divider) }
    end)
    |> elem(0)
    |> Enum.reject(& is_nil(&1))
    |> Enum.join(", ")
  end

  defp whole_units(unit, value) do
    Integer.floor_div(value, unit.divider)
  end

  defp build_str(0, _), do: nil
  defp build_str(1, unit), do: "1 #{unit.single}"
  defp build_str(quantity, unit), do: "#{quantity} #{unit.plural}"
end
