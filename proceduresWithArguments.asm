.data

.text
	main:
		# use a registers to pass arguments into functions
		addi $a1, $zero, 10
		addi $a2, $zero, 15
		jal addNumbers
		
		li $v0, 1
		move $a0, $v1
		syscall
	
	#Exit program when done
	li $v0, 10
	syscall
	
	addNumbers:
		# v register used for return values
		add $v1, $a1, $a2
		jr $ra