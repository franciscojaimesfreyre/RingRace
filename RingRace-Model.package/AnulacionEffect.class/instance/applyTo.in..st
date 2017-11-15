action
applyTo: aPlayer in: aGameStateContext
	aGameStateContext newTransformedLastState: [ :aGameState | aGameState withRemovedActivePermanentCard: cardToRemove ]