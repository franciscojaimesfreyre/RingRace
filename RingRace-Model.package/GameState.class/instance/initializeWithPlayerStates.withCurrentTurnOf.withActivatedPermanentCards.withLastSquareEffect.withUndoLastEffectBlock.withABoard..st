instance initialization
initializeWithPlayerStates: somePlayerStates withCurrentTurnOf: aPlayer withActivatedPermanentCards: someActivatedPermanentCards withLastSquareEffect: aLastSquareEffect withUndoLastEffectBlock: anUndoLastEffectBlock withABoard: aBoard
	playerStates := somePlayerStates.
	playerInTurn := aPlayer.
	activatedPermanentCards := someActivatedPermanentCards.
	lastSquareEffect := aLastSquareEffect.
	undoLastEffectBlock := anUndoLastEffectBlock.
	board := aBoard.