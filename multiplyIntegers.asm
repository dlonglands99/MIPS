.data

.text
	# instead of using variables, we can add immediately into registers
	
	#store 5 + 0 in s0
	addi $s0, $zero, 5
	
	#store 7 + 0 in s1
	addi $s1, $zero ,7
	
	mul $t0, $s0, $s1
	
	li $v0, 1
	move $a0, $t0
	syscall
