.data
.text
	addi $t0, $zero, 30
	addi $t1, $zero, 5
	
	# Version 1: divide t0 by t1, store in s0
	div $s0, $t0, $t1
	
	# Version 2: divide t0 by t1, store quotient in lo, remainder in hi
	div $t0, $t1
	
	# Move quotient into s0
	mflo $s0
	
	#Move remainder into s1
	mfhi $s1
	
	# in this case, prints the quotient
	li $v0, 1
	move $a0, $s0
	syscall