action
withMirroredSquareAtPosition: aPosition
	| mirroredSquareEffect newEffects|
	
	mirroredSquareEffect := Mirror of:(((board squares) at: aPosition) effect).
   newEffects := (board squaresEffects) copy.
	newEffects at: aPosition put: mirroredSquareEffect.
	
	^ self class
		withPlayerStates: playerStates
		withCurrentTurnOf: playerInTurn
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: lastSquareEffect
		withUndoLastEffectBlock: undoLastEffectBlock
		withBoard: (Board withSquareEffects: newEffects)