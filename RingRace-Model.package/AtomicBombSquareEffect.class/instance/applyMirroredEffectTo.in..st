action
applyMirroredEffectTo: aPlayer in: aGameStateContext
	aGameStateContext newTransformedLastState: [ :gameState | gameState withUndoLastEffectBlock: [] ]