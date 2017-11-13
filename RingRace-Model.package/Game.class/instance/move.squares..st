action
move: aPlayer squares: aNumberOfSquares
	| movement |
	movement := aNumberOfSquares >= 0
		ifTrue: [ SingleForwardMovement moving: aPlayer into: self ]
		ifFalse: [ SingleBackwardMovement moving: aPlayer into: self ].
	aNumberOfSquares abs
		timesRepeat: [ movement execute.
			winnerValidator
				check: (self stateOf: aPlayer)
				ifWinnerDo: [ hasEnded := true.
					winner := aPlayer ] ]