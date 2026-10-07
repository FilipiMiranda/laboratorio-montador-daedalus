ORG 0 
; Carrega o número positivo 
LDR A POSITIVO 

; Coloca 1 no bit de sinal 
OR A #H80 

; Guarda o resultado 
STR A NEGATIVO 

HLT 

POSITIVO: DB 5 
NEGATIVO: DB 0
