action
move: aPlayer backward: aNumberOfSquares
	| remainingSquares backwardMovement |
	remainingSquares := aNumberOfSquares.
	backwardMovement := BackwardMovement create.
	[ remainingSquares ~~ 0 ]
		whileTrue: [ backwardMovement move: aPlayer in: self.
						remainingSquares := remainingSquares - 1 ]