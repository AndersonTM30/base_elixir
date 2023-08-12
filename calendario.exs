defmodule MeuModulo.Calendario do
    def abreviacao_dia_semana(dia_semana) do
        case dia_semana do
            :Segunda -> "Seg"
            :Terca -> "Ter"
            _ -> "Dia inválido"
        end
    end
end