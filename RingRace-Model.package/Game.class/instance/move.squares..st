action
move: aPlayer squares: aNumberOfSquares
	| movement |
	movement := aNumberOfSquares >= 0
		ifTrue: [ ForwardMovement moving: aPlayer into: self ]
		ifFalse: [ BackwardMovement moving: aPlayer into: self ].
	aNumberOfSquares abs
		timesRepeat: [ movement execute.
			winnerValidator
				check: (self stateOf: aPlayer)
				ifWinnerDo: [ hasEnded := true.
					winner := aPlayer ] ]