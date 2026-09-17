DIM pin_fixo AS STRING
DIM pin_informado AS STRING
DIM tentativas AS INTEGER
DIM max_tentativas AS INTEGER

pin_fixo = "4321"
tentativas = 0
max_tentativas = 3

PRINT "Digite o PIN de acesso:"
INPUT pin_informado
tentativas = tentativas + 1

WHILE (pin_informado <> pin_fixo) AND (tentativas < max_tentativas)
    PRINT "PIN invalido. Tente novamente."
    PRINT "Digite o PIN de acesso:"
    INPUT pin_informado
    tentativas = tentativas + 1
WEND

IF pin_informado = pin_fixo THEN
    PRINT "Transacao autorizada!"
ELSE
    PRINT "Limite de tentativas excedido."
END IF