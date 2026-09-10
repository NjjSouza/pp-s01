DIM peso AS DOUBLE
DIM quantidade AS DOUBLE
DIM meta AS DOUBLE

PRINT "Digite o seu peso (em kg):"
INPUT peso

PRINT "Digite a quantidade de agua ingerida (em ml):"
INPUT quantidade

meta = peso * 35

IF quantidade >= meta THEN
    PRINT "Meta atingida!"
ELSE
    PRINT "Meta nao atingida"
END IF