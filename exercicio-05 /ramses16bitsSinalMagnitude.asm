ORG 0 
; Copia o byte baixo
LDR A POS_BAIXO 
STR A NEG_BAIXO 

; Carrega o byte alto 
LDR A POS_ALTO 

; Coloca o bit de sinal em 1 
OR A #H80 

; Guarda o byte alto 
STR A NEG_ALTO 

HLT 

; Número positivo 
POS_ALTO: DB H00 
POS_BAIXO: DB H05 

; Número negativo
NEG_ALTO: DB 0 
NEG_BAIXO: DB 0
