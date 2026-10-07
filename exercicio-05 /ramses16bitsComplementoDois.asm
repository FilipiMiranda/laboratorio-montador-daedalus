ORG 0 

; Inverte o byte baixo 
LDR A POS_BAIXO 
NOT A 
STR A NEG_BAIXO 

; Soma 1 
LDR A NEG_BAIXO 
ADD A #1 
STR A NEG_BAIXO 

; Verifica carry 
JC CARRY 

; Inverte o byte alto 
LDR A POS_ALTO
NOT A 
STR A NEG_ALTO 

JMP FIM 

; Se houve carry, soma 1 no byte alto 
CARRY: 
LDR A POS_ALTO 
NOT A 
ADD A #1 
STR A NEG_ALTO 

FIM: 
HLT 

; Número positivo
POS_ALTO: DB H00 
POS_BAIXO: DB H05 

; Número negativo 
NEG_ALTO: DB 0 
NEG_BAIXO: DB 0
