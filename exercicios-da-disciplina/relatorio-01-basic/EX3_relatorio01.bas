DIM horas AS DOUBLE
DIM minutos AS DOUBLE
DIM segundos AS DOUBLE

PRINT "Digite o tempo em horas a ser convertido:"
INPUT horas

minutos = horas * 60
segundos = minutos * 60

PRINT "Valor original em horas:"; horas
PRINT "Tempo equivalente em minutos:"; minutos
PRINT "Tempo equivalente em segundos:"; segundos