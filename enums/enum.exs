defmodule EnumModule do
  # Retorna true ou false
  def allFunction do
    Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)
  end
  # Retorna true se pelo menos uma condição for true
  def anyFunction do
    Enum.any?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 5 end)
  end
  # Retorna uma matriz em pequenos grupos
  def chunkEvery do
    Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)
  end
  # Retorna uma matriz em pequenos grupos, porém quando é adicionado mais elementos no array, a matriz gera nos
  # agrupamentos
  def chunkBy do
    Enum.chunk_by(["one", "two", "three", "four", "five"], fn(x) -> String.length(x) end)
    Enum.chunk_by(["one", "two", "three", "four", "five", "six", "seven", "eight"], fn(x) -> String.length(x) end)
  end
end
