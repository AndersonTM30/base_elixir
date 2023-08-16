defmodule EstruturaControle do
  # No Elixir, os únicos valores falsos são nil e false.
  def estruturaIf do
    if String.valid?("Hello") do
      "Valid string!"
    else
      "Invalid string!"
    end
    "Valid string!"
  end

  def estruturaUnless do
    unless is_integer("hello") do
      "Not an Int"
    end
    "Not an Int"
  end
end
