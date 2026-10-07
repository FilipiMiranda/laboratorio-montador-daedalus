ORG 0 

; Soma as duas variáveis 
LDR A N1 
ADD A N2 
STR A RESULTADO 

; Verifica se ocorreu overflow 
JV OVERFLOW 

; Não ocorreu overflow 
LDR A ZERO 
STR A FLAG 
JMP FIM 

; Ocorreu overflow 
OVERFLOW: 
LDR A FF 
STR A FLAG 

FIM: 
HLT 

; Variáveis 
N1: DB 100 
N2: DB 50 

RESULTADO: DB 0 
FLAG: DB 0 

ZERO: DB 0 
FF: DB HFF
