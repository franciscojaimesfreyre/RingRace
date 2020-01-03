action
withRemovedActivePermanentCard: aCard
	^ self class
		withPlayerStates: playerStates
		withCurrentTurnOf: playerInTurn
		withActivatedPermanentCards: (activatedPermanentCards reject: [ :eachCardActivation | eachCardActivation card == aCard ])
		withLastSquareEffect: lastSquareEffect
		withUndoLastEffectBlock: undoLastEffectBlock
		withBoard: board