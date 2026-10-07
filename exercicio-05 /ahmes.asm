ORG 0 
; Carrega o número positivo 
LDA POSITIVO 

; Chama a sub-rotina 
JSR COMPLEMENTO_DOIS 

; Guarda o resultado 
STA NEGATIVO 

HLT 

; Faz o complemento de dois 
COMPLEMENTO_DOIS: 
NOT A 
ADD UM 
JMP COMPLEMENTO_DOIS,I 

POSITIVO: DB 5 
NEGATIVO: DB 0 

UM: DB 1
