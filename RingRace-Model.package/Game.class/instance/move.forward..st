action
move: aPlayer forward: numberOfSquares
	| square remainingSquares |
	remainingSquares := numberOfSquares.
	[ remainingSquares ~~ 0 and: hasEnded not ]
		whileTrue: [ square := (self stateOf: aPlayer) position.
			square == board lastSquare
				ifTrue: [ | state laps |
					state := self stateOf: aPlayer.
					laps := state laps + 1.
					self at: aPlayer put: (state withNewLaps: laps).
					hasEnded := laps = numberOfLaps ].
			hasEnded
				ifTrue: [ winner := aPlayer ]
				ifFalse: [ ForwardMovement create move: aPlayer in: self.
					remainingSquares := remainingSquares - 1 ] ]