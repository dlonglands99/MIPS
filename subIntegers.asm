.data
	num1: .word 12
	num2: .word 15

.text
	lw $s0, num1 #s0 = 12
	lw $s1, num2 #s1 = 15
	
	sub $t0, $s0, $s1
	
	li $v0, 1
	
	move $a0, $t0 # move value in $t0 -> $a0. Same as ($add $a0, $zero, $t0)
	syscall