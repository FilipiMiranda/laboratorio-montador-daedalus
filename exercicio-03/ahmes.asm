ORG 0 
; Começa com zero 
LDA ZERO 

; Guarda o valor que será usado para limpar a memória
STA VALOR 

; Carrega a quantidade de posições 
LDA N 
STA CONTADOR LOOP: 

; Verifica se terminou 
LDA CONTADOR 
JZ FIM 

; Zera a posição atual 
LDA VALOR 
STA INICIO 

; Avança para a próxima posição 
LDA INICIO 
ADD UM 
STA INICIO 

; Diminui o contador 
LDA CONTADOR 
ADD MENOS_UM 
STA CONTADOR 

JMP LOOP 

FIM: 
HLT 

; Posição inicial da área
INICIO: DB H80 

; Quantidade de posições 
N: DB 10 

CONTADOR: DB 0 
VALOR: DB 0 

ZERO: DB 0 
UM: DB 1 
MENOS_UM: DB -1
