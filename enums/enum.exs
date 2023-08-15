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
  # Retorna uma matriz em pequenos grupos, porém quando é adicionado mais elementos no array, a matriz gera novos
  # agrupamentos
  def chunkBy do
    Enum.chunk_by(["one", "two", "three", "four", "five"], fn(x) -> String.length(x) end)
    Enum.chunk_by(["one", "two", "three", "four", "five", "six", "seven", "eight"], fn(x) -> String.length(x) end)
  end
  # Trata itens específicos do array sempre pelo primeiro item
  def mapEvery do
    Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn x -> x + 1000 end)
  end
  # Percorre o array sem gerar um novo valor, apenas percorre
  def enumEach do
    Enum.each(["one", "two", "three"], fn(s) -> IO.puts(s) end)
  end
  # percorre o array e gera um novo array com os novos dados
  def enumMap do
    Enum.map([0, 1, 2, 3], fn(x) -> x - 1 end)
  end
  # retorna o valor mínimo contido no array
  def enumMin do
    Enum.min([5, 3, 0, -1])
  end
  # retorna o valor máximo contido no array
  def enumMax do
    Enum.max([5, 4, 0, 8])
  end
  # retorna um novo array para os elementos que retornam true da condição passada na função de callback
  def enumFilter do
    Enum.filter([1, 2, 3, 4, 5], fn(x) -> rem(x, 2) == 0 end)
  end
  #  resume uma lista com os dados da coleção, acumulador e função de callback que passa a nova condição.
  def enumReduce do
    Enum.reduce([1, 2, 3], 10, fn (x, acc) -> x + acc end)
  end
  # retorna o array ordenado do menor para o maior
  def enumSort do
    Enum.sort([5, 6, 1, -1, 4, 3])
  end
  # retorna um novo array sem dados duplicados
  def enumUniq do
    Enum.uniq([1, 2, 3, 2, 1, 1, 2, 1, 4, 5])
  end
end
