ORG 0 
; Começa considerando N1 como maior 
LDA N1 
STA MAIOR 

; Compara N2 com o maior atual 
LDA N2 
SUB MAIOR 

; Se N2 for menor, continua 
JN N2_MENOR 

; N2 é maior ou igual 
LDA N2 
STA MAIOR 

N2_MENOR: 

; Compara N3 com o maior atual 
LDA N3 
SUB MAIOR 

; Se N3 for menor, termina 
JN FIM 

; N3 é maior ou igual 
LDA N3 
STA MAIOR 

FIM: 
HLT 

; Valores para comparação 
N1: DB 35 
N2: DB 80
N3: DB 42 

; Guarda o maior valor 
MAIOR: DB 0
