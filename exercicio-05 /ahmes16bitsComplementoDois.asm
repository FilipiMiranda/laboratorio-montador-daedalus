ORG 0 

; Inverte o byte baixo 
LDA POS_BAIXO 
NOT A 
STA NEG_BAIXO 

; Soma 1 
LDA NEG_BAIXO 
ADD UM 
STA NEG_BAIXO 

; Verifica carry 
JC CARRY 

; Inverte o byte alto 
LDA POS_ALTO 
NOT A STA 
NEG_ALTO 

JMP FIM 

; Se houve carry, soma 1 no byte alto 
CARRY: 
LDA POS_ALTO 
NOT A 
ADD UM 
STA NEG_ALTO 

FIM: 
HLT 

; Número positivo 
POS_ALTO: DB H00 
POS_BAIXO: DB H05 

; Número negativo 
NEG_ALTO: DB 0 
NEG_BAIXO: DB 0 

UM: DB 1
