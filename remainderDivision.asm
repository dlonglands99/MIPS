.data
.text
	addi $t0, $zero, 23
	addi $t1, $zero, 4
	
	div $t0, $t1
	
	mflo $s0 # quotient
	mfhi $s1 # remainder
	
	#print
	li $v0, 1
	move $a0, $s1 # remainder moved into a0 for printing
	syscall