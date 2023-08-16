defmodule PatternMatching do
  def operatorMatch do
    # O operador = serve para comparar os valores do lado esquerdo que estejam armazenados em uma variável com
    # o lado direito, se os valores forem iguais,
    # retorna o valor da equação
    x = 1
  end
  # quando o valor é fixado na variável, não permite que o valor seja sobreescrito
  def operatorPin do
    x = 1
    ^x = 2
  end
end
