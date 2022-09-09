// JUAN PABLO ARANGO ZULETA
// 000368789
// JUAN.ARANGOZ@UPB.EDU.CO

(INICIO)

 @KBD

 D=M
 @84 //(t)
 D=D-A
 @LINEA1
 D;JEQ
 
 @KBD

 D=M
 @67 //(c)
 D=D-A 
 @Borrar
 D;JEQ


 
@INICIO
 0;JMP

(LINEA1)

 @16400        
 D=A
 @Var
 M=D 
 @256
 D=A
 @contador
 M=D
 @256
 D=A 
 @color
 M=D
 @32
 D=A
 @salto
 M=D
 @bool
 M = 0 
 @VARR
 0;JMP

(LINEA2)

  @20480                
  D=A
  @Var
  M=D 
  @32
  D=A
  @contador
  M=D
  @color
  M= -1
  @1
  D=A 
  @salto
  M=D
  @bool
  M= 1
  @VARR
  0;JMP

(Borrar)

 @16384
 D=A
 @Var
 M=D 
 @8192
 D=A
 @contador
 M=D
 @1
 D=A 
 @color
 M= 0
 @salto
 M=D
 @VARR
 0;JMP


(VARR)
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
 @bool
 D=M
 @LINEA 2
 D;JEQ

 @INICIO
 0;JMP