.data
	PI: .float 3.14

.text
	# code to print float is 2, int is 1
	li $v0, 2
	lwc1 $f12, PI
	syscall