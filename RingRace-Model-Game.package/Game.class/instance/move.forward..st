action
move: aPlayer forward: numberOfSquares
	| forwardMovement square remainingSquares |
	forwardMovement := ForwardMovement create.
	remainingSquares := numberOfSquares.
	[ remainingSquares ~~ 0 and: (hasEnded not) ]
		whileTrue: [ square := (playerStates at: aPlayer) position.
			( square == (board lastSquare) ) ifTrue: [
				|state laps|
				state := playerStates at: aPlayer.
				laps := state laps + 1.
				
				playerStates at: aPlayer put: (state withNewLaps: laps).
				
				hasEnded := ( laps = numberOfLaps ).
			].
		
			hasEnded ifTrue: [ winner := aPlayer ]
			ifFalse: [
				forwardMovement move: aPlayer in: self.
				remainingSquares := remainingSquares - 1.
			].
		]