ORG 0 

; Carrega o número positivo 
LDA POSITIVO 

; Coloca 1 no bit de sinal 
ORA SINAL 

; Guarda o número negativo 
STA NEGATIVO 

HLT 

POSITIVO: DB 5 
NEGATIVO: DB 0 

; Bit de sinal 
SINAL: DB H80
