.data

.text
	addi $t0, $zero, 2000
	addi $t1, $zero, 10
	
	#lets you multiple two numbers large than 16 bit each, therefore will need 2 registers to store them
	mult $t0, $t1
	
	mflo $s0
	
	# display product
	li $v0, 1
	move $a0, $s0
	syscall
	