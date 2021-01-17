.data
	a: .word 10
	x: .word 20

.text
	# store a in temp 0
	lw $t0, a
	#store x in temp 1
	lw $t1, x
	# add temp 0 and temp 1, store in a0
	add $a0, $t0, $t1
	
	li $v0, 1
	syscall