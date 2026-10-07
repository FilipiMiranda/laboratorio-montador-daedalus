ORG 0 

; Resultado começa em zero 
LDA ZERO 
STA RESULTADO 

LOOP: 

; Verifica se o multiplicador chegou a zero 
LDA B 
JZ FIM 

; Soma o multiplicando ao resultado 
LDA RESULTADO 
ADD A 
STA RESULTADO 

; Diminui o multiplicador 
LDA B 
ADD MENOS_UM 
STA B 

JMP LOOP 

FIM: 
HLT 

; Números positivos 
A: DB 6 
B: DB 4 

; Resultado 
RESULTADO: DB 0 

ZERO: DB 0 
MENOS_UM: DB -1
