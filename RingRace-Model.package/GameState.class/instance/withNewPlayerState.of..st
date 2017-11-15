action
withNewPlayerState: aPlayerState of: aPlayer
	| newStatesPerPlayer |
	newStatesPerPlayer := Dictionary withAll: playerStates.
	newStatesPerPlayer at: aPlayer put: aPlayerState.
	^ self class
		withPlayerStates: newStatesPerPlayer
		withCurrentTurnOf: playerInTurn
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: lastSquareEffect 
		withUndoLastEffectBlock: undoLastEffectBlock