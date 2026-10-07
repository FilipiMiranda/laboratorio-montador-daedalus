ORG 0 
; Soma os bytes baixos 
LDR A N1_BAIXO 
ADD A N2_BAIXO 
STR A RESULTADO_BAIXO 

; Verifica carry 
JC CARRY_BAIXO 

; Soma os bytes altos 
LDR A N1_ALTO 
ADD A N2_ALTO 
STR A RESULTADO_ALTO 

; Verifica overflow 
JV OVERFLOW 

JMP SEM_OVERFLOW 

; Soma o carry ao byte alto 
CARRY_BAIXO:
LDR A N1_ALTO 
ADD A N2_ALTO 
ADD A UM 
STR A RESULTADO_ALTO 

; Verifica overflow 
JV OVERFLOW 
JC OVERFLOW 

JMP SEM_OVERFLOW 

; Marca overflow 
OVERFLOW: 
LDR A FF 
STR A FLAG 
JMP FIM 

; Marca que não houve overflow 
SEM_OVERFLOW: 
LDR A ZERO 
STR A FLAG 

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

; Flag 
FLAG: DB 0

ZERO: DB 0 
UM: DB 1 
FF: DB HFF
