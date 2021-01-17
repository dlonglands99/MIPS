.data
	# a double is 64bit, it takes 2 registers to store one double
	myDouble: .double 7.202
	zeroDouble: .double 0.0
.text
	#store myDouble in f2 and f3
	ldc1 $f2, myDouble
	#store zeroDouble in f0 and f1
	ldc1 $f0, zeroDouble
	
	li $v0, 3
	#add myDouble and zeroDouble, store in f12 to be printed
	add.d $f12, $f2, $f0
	syscall