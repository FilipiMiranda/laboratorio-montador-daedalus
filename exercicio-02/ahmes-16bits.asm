ORG 0 

; Soma os bytes baixos 
LDA N1_BAIXO 
ADD N2_BAIXO 
STA RESULTADO_BAIXO 

; Verifica carry do byte baixo 
JC CARRY_BAIXO 

; Soma os bytes altos 
LDA N1_ALTO 
ADD N2_ALTO 
STA RESULTADO_ALTO 

; Verifica overflow 
JV OVERFLOW 

JMP SEM_OVERFLOW 

; Soma o carry ao byte alto 
CARRY_BAIXO: 
LDA N1_ALTO 
ADD N2_ALTO 
ADD UM 
STA RESULTADO_ALTO 

; Verifica overflow 
JV OVERFLOW 
JC OVERFLOW 

JMP SEM_OVERFLOW 

; Marca overflow 
OVERFLOW: 
LDA FF 
STA FLAG 
JMP FIM 

; Marca que não houve overflow 
SEM_OVERFLOW: 
LDA ZERO 
STA FLAG 

FIM: 
HLT 

; Número 1 
N1_ALTO: DB H00 
N1_BAIXO: DB HFF 

; Número 2 
N2_ALTO: DB H01 
N2_BAIXO: DB H02 

; Resultado 
RESULTADO_ALTO: DB 0 
RESULTADO_BAIXO: DB 0 

; Flag de overflow 
FLAG: DB 0 

ZERO: DB 0 
UM: DB 1 
FF: DB HFF
