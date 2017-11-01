action
move: arg1 backward: arg2
	| tmp1 tmp2 |
	tmp1 := arg2.
	tmp2 := BackwardMovement create.
	[ tmp1 ~~ 0 ]
		whileTrue: [ tmp2 move: arg1 in: self.
			tmp1 := tmp1 - 1 ]