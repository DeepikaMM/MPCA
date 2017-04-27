.data
  price: .word 7,1,6,5,9,1,12,3,3,7
  days:  .word 10

.text
_start:
  ldr r0, =price
  ldr r1, =days
  ldr r1, [r1] ;n
;-- Top line: DO NOT DELETE --
  mov r2,#-1 ;b=-1
  mov r3,#0  ;i=0
  mov r4,#0  ;sum=0
  mov r5,#0  ;s=0
  sub r1,r1,#1 ;n-1
  
forloop:
	
	cmp r3,r1
	bge exit
	ldr r6,[r0],#4
	ldr r7,[r0]
	cmp r6,r7
	bge iftwo
	mov r2,r6
	iftwo:
	cmp r2,#-1
	beq ifthree
	cmp r6,r7
	bge ifthree
	mov r5,r7
	ifthree:
	add r3,r3,#1
	cmp r2,#-1
	beq forloop
	sub r8,r5,r2
	add r4,r4,r8
	mov r2,#-1
	b forloop
 
exit:
cmp r4,#-1
bne zero
mov r0,#0
zero: mov r0,r4
;-- Bottom line: DO NOT DELETE --
swi 0x11
	