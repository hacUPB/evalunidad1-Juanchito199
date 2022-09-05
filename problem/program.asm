// JUAN PABLO ARANGO ZULETA
// 000368789
// JUAN.ARANGOZ@UPB.EDU.CO

(INICIO)

@KBD


 D=M
 @84 //(t)
 D=D-A
 @Linea1
 D;JEQ
 
@KBD


 D=M
 @67 //(c)
 D=D-A 
 @Borrar
 D;JEQ

@KBD


 D=M
 @84 //(t)
 D=D-A 
 @Linea2
 D;JEQ
 
@INICIO
 0;JMP

(Linea1)


@16400    
           
 D=A

@Var
 M=D 

@256
 D=A

@contador
 M=D

@32
 D=A 

@salto
 M=D

@color
M = 1
 
 @VARI
 0;JMP


(Borrar)


@16384
 D=A

@Var
 M=D 

@8300
 D=A

@contador
 M=D

@1
 D=A 

@salto
 M=D

@color
M = 0

@VARI
 0;JMP
 
 
(Linea2)


@20480                
 D=A

@Var
 M=D 

@32
 D=A

@contador
 M=D

@1
 D=A 
 
@salto
 M=D


@color
M= -1
 
@VARI
0;JMP


(VARI)
@Var               
 D=M
@Screen
 M=D 
 
(Pintar)
@contador
 D=M 
 
 @FIN
 D;JEQ
 
@color
D=M 

@Screen
A=M 
M=D 
 
@contador
M=M-1
 

@salto
 D=M
 
@Screen
 M=M+D 
 
@Pintar
 0;JMP
 
(FIN)
 @INICIO
 0;JMP