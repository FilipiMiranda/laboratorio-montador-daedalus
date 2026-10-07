ORG 0 

; A guarda o primeiro número 
LDR A NUM1 

; B guarda o segundo número 
LDR B NUM2 

; X começa com o resultado igual a zero 
LDR X #0 

LOOP: 

; Verifica se o multiplicador chegou a zero 
JZ FIM 

; Soma A ao resultado 
ADD X A 

; Diminui o multiplicador 
SUB B #1 

JMP LOOP 

FIM: 

; Guarda o resultado na memória 
STR X RESULTADO

HLT 

; Números positivos 
NUM1: DB 6 
NUM2: DB 4 

; Resultado
RESULTADO: DB 0
