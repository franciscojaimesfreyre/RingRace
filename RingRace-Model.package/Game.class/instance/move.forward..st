action
move: aPlayer forward: aNumberOfSquares
	| remainingSquares |
	remainingSquares := aNumberOfSquares.
	[ remainingSquares ~~ 0 and: hasEnded not ]
		whileTrue: [ (ForwardMovement moving: aPlayer into: self) execute.
			(self stateOf: aPlayer) laps >= numberOfLaps
				ifTrue: [ hasEnded := true.
					winner := aPlayer ]
				ifFalse: [ remainingSquares := remainingSquares - 1 ] ]