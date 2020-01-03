instantiation
withPlayers: somePlayers andABoard: aBoard
	| playerStates activatedPermanentCards |
	playerStates := Dictionary new.
	activatedPermanentCards := OrderedCollection new.
	somePlayers
		do:
			[ :eachPlayer | playerStates at: eachPlayer put: (PlayerState withPositionInGame: (PositionInGame positionedInSquare: 1 withLaps: 0)) ].
	^ self new
		initializeWithPlayerStates: playerStates
		withCurrentTurnOf: somePlayers first
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: NoSquareEffect new
		withUndoLastEffectBlock: [  ]
		withABoard: aBoard