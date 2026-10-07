ORG 0 

; Mantém o byte baixo 
LDA POS_BAIXO 
STA NEG_BAIXO 

; Carrega o byte alto 
LDA POS_ALTO

; Coloca o bit de sinal em 1 
ORA SINAL 

; Guarda o byte alto 
STA NEG_ALTO 

HLT 

; Número positivo
POS_ALTO: DB H00 
POS_BAIXO: DB H05 

; Número negativo 
NEG_ALTO: DB 0
NEG_BAIXO: DB 0 

; Bit de sinal do número de 16 bits 
SINAL: DB H80
