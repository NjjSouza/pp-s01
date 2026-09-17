print("Digite o primeiro número:")
primeiro_valor = tonumber(io.read())

print("Digite o segundo número:")
segundo_valor = tonumber(io.read())

print ("Digite a operação (media, maior ou diferenca)")
operacao = io.read()

local function calcularMedia(a, b)
    return (primeiro_valor + segundo_valor)/2
end 

local function encontrarMaior(a, b)
    if a > b then
        return a
    else 
        return b
    end
end

local function calcularDiferencaAbsoluta(a, b)
    if a > b then
        return a - b
    else
        return b - a
    end
end

local function analisarNumeros(n1, n2, operacao)
    if operacao == "media" then
        return calcularMedia(n1, n2)
    elseif operacao == "maior" then
        return encontrarMaior(n1, n2)
    else
        return calcularDiferencaAbsoluta(n1, n2)
    end
end

print("Resultado: " .. analisarNumeros(primeiro_valor, segundo_valor, operacao))