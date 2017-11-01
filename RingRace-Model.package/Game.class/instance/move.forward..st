action
move: arg1 forward: arg2
	| tmp1 tmp2 |
	tmp1 := arg2.
	tmp2 := ForwardMovement create.
	[ tmp1 ~~ 0 and: hasEnded not ]
		whileTrue: [ tmp2 move: arg1 in: self.
			(self stateOf: arg1) laps >= numberOfLaps
				ifTrue: [ hasEnded := true.
					winner := arg1 ]
				ifFalse: [ tmp1 := tmp1 - 1 ] ]