local tabela = {} -- tabela que guardará os elementos

print("Digite a quantidade de elementos (N):")
local N = tonumber(io.read())

-- para preencher a tabela:
for i = 1, N do
    print("Digite o elemento " .. i .. ":")
    tabela[i] = tonumber(io.read()) 
end

print("Digite o número X a ser buscado:")
local X = tonumber(io.read())

-- para contar as ocorrências:
local function contarOcorrencias(tabela, alvo)
    local contador = 0

    for i = 1, #tabela do -- "#tabela" quer dizer que o for vai até a capacidade
        -- de preenchimento da tabela (acompanha seu tamanho)
        if tabela[i] == alvo then
            contador = contador + 1
        end
    end

    return contador
end

local resultado = contarOcorrencias(tabela, X)

print("O número " .. X .. " aparece " .. resultado .. " vez(es) na tabela.")