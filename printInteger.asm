.data
	age: .word 21 # word is 4 bytes (32 bit integer)
.text
	# print an integer to the screen
	li $v0, 1
	lw $a0, age
	syscall