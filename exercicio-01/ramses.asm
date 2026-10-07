ORG 0 

; Zerando os registradores individualmente 
JSR ZERA_A 
JSR ZERA_B 
JSR ZERA_X 

; Zerando todos os registradores 
JSR ZERA_TODOS 

HLT 

; Sub-rotina para zerar A 
ZERA_A: 
NOP 
LDR A #0 
JMP ZERA_A,I 

; Sub-rotina para zerar B 
ZERA_B: 
NOP 
LDR B #0 
JMP ZERA_B,I 


; Sub-rotina para zerar X 
ZERA_X: 
NOP 
LDR X #0 
JMP ZERA_X,I 


; Sub-rotina para zerar todos 
ZERA_TODOS: 
NOP 
LDR A #0 
LDR B #0 
LDR X #0 
JMP ZERA_TODOS,I
