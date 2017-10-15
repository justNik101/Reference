#8051 ATMEL AT89C51
#Simple Program for toggling 2 pins ( 55H = b'0101 0101 => b'1010 1010 )
       ORG 0000H
       MOV A,#55H 
AGAIN: MOV P1, A
       ACALL DELAY
       CPL A
       MOV P2, A
       CPL A
       SJMP AGAIN
DELAY: MOV R2, #200
HERE0: MOV R3, #254
HERE:  DJNZ R3, HERE
       DJNZ R2, HERE0
       RET
       END
