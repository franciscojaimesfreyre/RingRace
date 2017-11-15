action
applyTo: aPlayer in: aGameStateContext
	aGameStateContext newTransformedLastState: [ :gameState | gameState withUndoLastEffectBlock: [] ]