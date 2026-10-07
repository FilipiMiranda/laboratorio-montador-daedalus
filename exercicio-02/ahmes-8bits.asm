ORG 0 

; Soma as duas variáveis 
LDA N1 
ADD N2 
STA RESULTADO 

; Verifica se ocorreu overflow 
JV OVERFLOW 

; Não ocorreu overflow 
LDA ZERO 
STA FLAG 
JMP FIM 

; Ocorreu overflow 
OVERFLOW: 
LDA FF 
STA FLAG 

FIM:
HLT 

; Variáveis 
N1: DB 100 
N2: DB 50 

RESULTADO: DB 0 
FLAG: DB 0 

ZERO: DB 0 
FF: DB HFF
