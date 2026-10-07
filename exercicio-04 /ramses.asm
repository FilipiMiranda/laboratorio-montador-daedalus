ORG 0 

; Começa considerando N1 como maior 
LDR A N1 
STR A MAIOR 

; Compara N2 com o maior atual
LDR A N2 
SUB A MAIOR 

; Se N2 for menor, continua 
JN N2_MENOR 

; N2 é maior ou igual 
LDR A N2 
STR A MAIOR 

N2_MENOR: 

; Compara N3 com o maior atual
LDR A N3 
SUB A MAIOR 

; Se N3 for menor, termina 
JN FIM 

; N3 é maior ou igual 
LDR A N3 
STR A MAIOR 

FIM: 
HLT 

; Valores para comparação
N1: DB 35
N2: DB 80 
N3: DB 42 

; Maior valor 
MAIOR: DB 0
