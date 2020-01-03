instantation
withPlayerStates: someStatesPerPlayer withCurrentTurnOf: aPlayer withActivatedPermanentCards: someActivatedPermanentCards withLastSquareEffect: aLastSquareEffect withUndoLastEffectBlock: anUndoLastEffectBlock withBoard: aBoard
	^ self new
		initializeWithPlayerStates: someStatesPerPlayer
		withCurrentTurnOf: aPlayer
		withActivatedPermanentCards: someActivatedPermanentCards
		withLastSquareEffect: aLastSquareEffect
		withUndoLastEffectBlock: anUndoLastEffectBlock
		withABoard: aBoard