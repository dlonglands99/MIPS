.data
	myChar: .byte 'm'
.text
	li $v0, 4
	la $a0, myChar
	syscall