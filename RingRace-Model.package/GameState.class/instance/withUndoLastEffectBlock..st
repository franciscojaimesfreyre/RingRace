action
withUndoLastEffectBlock: aUndoLastEffectBlock
	^ self class
		withPlayerStates: playerStates
		withCurrentTurnOf: playerInTurn
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: lastSquareEffect 
		withUndoLastEffectBlock: aUndoLastEffectBlock