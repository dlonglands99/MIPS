.data

.text
	#sll = shift left logical
	addi $s0, $zero, 4
	
	# the 3rd argument here is always the exponent of 2 raised to it (in this case, it is 2^3)
	# therefore, t0 = 32
	sll $t0, $s0, 3
	
	li $v0, 1
	move $a0, $t0
	syscall
 