ORG 0 

; A será usado para guardar zero 
LDR A #0 

; X guarda o endereço inicial 
LDR X INICIO 

; B guarda a quantidade de posições 
LDR B N 

LOOP: 

; Verifica se terminou 
JZ FIM 

; Coloca zero na posição apontada por X 
STR A 0,X 

; Avança uma posição 
ADD X #1 

; Diminui o contador 
SUB B #1 

JMP LOOP 

FIM: 
HLT 

; Endereço inicial 
INICIO: DB H80 

; Quantidade de posições 
N: DB 10
