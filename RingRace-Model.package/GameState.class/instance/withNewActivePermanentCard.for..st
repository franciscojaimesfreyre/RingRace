action
withNewActivePermanentCard: aCard for: aPlayer
	| newActivatedPermanentCards |
	newActivatedPermanentCards := activatedPermanentCards copy.
	newActivatedPermanentCards add: (CardActivation withCard: aCard for: aPlayer).
	^ self class
		withPlayerStates: playerStates
		withCurrentTurnOf: playerInTurn
		withActivatedPermanentCards: newActivatedPermanentCards
		withLastSquareEffect: lastSquareEffect 
		withUndoLastEffectBlock: undoLastEffectBlock