local tabela = {} -- tabela que guardará todos os elementos
local maiores = {} -- tabela que guardará só os maiores que o limite

print("Digite a quantidade de elementos (N):")
local N = tonumber(io.read())

-- para preencher a tabela:
for i = 1, N do
    print("Digite o elemento " .. i .. ":")
    tabela[i] = tonumber(io.read())
end

print("Digite o valor do limite (K):")
local K = tonumber(io.read())

-- para filtrar os maiores que K:
local j = 1 -- j = posição na tabela dos maiores
for i = 1, #tabela do -- i = posição na tabela original
-- usar somente i faria com que os índices de maiores 
-- ficassem iguais aos índices originais de tabela
    if tabela[i] > K then
        maiores[j] = tabela[i]
        j = j + 1
    end
end

-- mostrar os elementos maiores que K:
print("--- Elementos maiores que " .. K .. " ---")

for i = 1, #maiores do
    print(maiores[i])
end