defmodule Exercicio01 do
    def  sum(num1, num2) do
        num1 + num2
    end

    def concatenaString(nome, sobrenome) do
        nome <> " " <> sobrenome
    end

    def numeroPar(numero) do
            if rem(numero, 2) == 0 do "Número Par" 
            else "Número Impar"
        end
    end

    def listaDuplicada(lista) do
        lista ++ lista
    end
end