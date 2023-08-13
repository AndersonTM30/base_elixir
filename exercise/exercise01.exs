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

    def mediaNotasAluno(grades) do
        total = Enum.reduce(grades, 0, fn {_student, grade}, acc -> acc + grade end)
        length = Map.size(grades)
        if length > 0, do: total / length, else: 0
    end

    def apresentarPessoa(tupla) do
        { nome, idade, profissao } = tupla
        IO.puts("Nome: #{nome} | Idade: #{idade} | Profissão: #{profissao}")
    end
end