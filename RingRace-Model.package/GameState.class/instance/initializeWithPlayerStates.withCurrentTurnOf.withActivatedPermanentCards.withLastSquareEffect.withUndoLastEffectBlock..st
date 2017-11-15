instance initialization
initializeWithPlayerStates: somePlayerStates withCurrentTurnOf: aPlayer withActivatedPermanentCards: someActivatedPermanentCards withLastSquareEffect: aLastSquareEffect withUndoLastEffectBlock: anUndoLastEffectBlock
	playerStates := somePlayerStates.
	playerInTurn := aPlayer.
	activatedPermanentCards := someActivatedPermanentCards.
	lastSquareEffect := aLastSquareEffect.
	undoLastEffectBlock := anUndoLastEffectBlock