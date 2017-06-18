defmodule Unit do
  defstruct divider: 1, single: "bottle", plural: "bottles"

  def single do
    %Unit{}
  end

  def six_pack do
    %Unit{divider: 6, single: "6-pack", plural: "6-packs"}
  end

  def carton do
    %Unit{divider: 24, single: "carton", plural: "cartons"}
  end

  def to_string(unit, 1), do: "1 #{unit.single}"
  def to_string(unit, quantity), do: "#{quantity} #{unit.plural}"
end
