action
withLastSquareEffect: aLastSquareEffect
	^ self class
		withPlayerStates: playerStates
		withCurrentTurnOf: playerInTurn
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: aLastSquareEffect
		withUndoLastEffectBlock: undoLastEffectBlock
		withBoard: board