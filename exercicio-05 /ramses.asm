ORG 0 

; Carrega o número positivo 
LDR A POSITIVO 

; Chama a sub-rotina 
JSR COMPLEMENTO_DOIS 

; Guarda o resultado 
STR A NEGATIVO 

HLT 

; Faz o complemento de dois
COMPLEMENTO_DOIS: 
NOP 
NOT A 
ADD A #1 
JMP COMPLEMENTO_DOIS,I 

POSITIVO: DB 5 
NEGATIVO: DB 0
