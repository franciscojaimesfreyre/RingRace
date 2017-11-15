accessing
withNewTurnOf: aPlayer
	^ self class
		withPlayerStates: playerStates
		withCurrentTurnOf: aPlayer
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: lastSquareEffect
		withUndoLastEffectBlock: undoLastEffectBlock