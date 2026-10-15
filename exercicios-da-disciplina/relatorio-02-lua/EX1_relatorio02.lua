-- função:
local function gerarTabelaPotencias(inicio, fim, base)
    for expoente = inicio, fim do -- "inicio" aumenta de 1 em 1 até "fim"
        local resultado = math.floor(base ^ expoente) -- math.floor evita
        -- interpretar os números como double ao invés de inteiro
        print(base .. " ^ " .. expoente .. " = " .. resultado)
    end
end

-- declaração de variáveis:
-- tonumber para evitar erros de lógica, porque lua interpreta todas as entradas
-- como string, então pode comparar números de forma equivocada
print("Digite o expoente inicial (M): ")
local M = tonumber(io.read())

print("Digite o expoente final (N): ")
local N = tonumber(io.read())

print("Digite a base: ")
local base = tonumber(io.read())

gerarTabelaPotencias(M, N, base) -- chamada da função