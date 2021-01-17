.data
	message: .asciiz "Hello MIPS \n"
.text
	main:
		# jump and link to displayMessage
		jal displayMessage
		jal printFive
	
	
	# Exit program
	li $v0, 10
	syscall
	
	displayMessage:
		li $v0, 4
		la $a0, message
		syscall
		
		# Jump back once function is done
		jr $ra
	
	printFive:
		addi $s0, $zero, 5
		move $a0, $s0
		li $v0, 1
		syscall
		
		jr $ra