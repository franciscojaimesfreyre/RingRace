action
move: aPlayer forward: numberOfSquares
	| remainingSquares forwardMovement |
	remainingSquares := numberOfSquares.
	forwardMovement := ForwardMovement create.
	[ remainingSquares ~~ 0 and: hasEnded not ]
		whileTrue: [ forwardMovement move: aPlayer in: self.
			( (self stateOf: aPlayer) laps >= numberOfLaps )
				ifTrue: [ hasEnded := true.
					winner := aPlayer ]
				ifFalse: [ remainingSquares := remainingSquares - 1 ] ]