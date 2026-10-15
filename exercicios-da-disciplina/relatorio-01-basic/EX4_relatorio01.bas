DIM distancia AS DOUBLE
DIM tempo AS DOUBLE
DIM pace_medio AS DOUBLE

PRINT "Digite a distancia percorrida (em km):"
INPUT distancia

PRINT "Digite o tempo total gasto (em minutos):"
INPUT tempo

pace_medio = tempo / distancia

PRINT "Pace medio:"; pace_medio; "min/km"