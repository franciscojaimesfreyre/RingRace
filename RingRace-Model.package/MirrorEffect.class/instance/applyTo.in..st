initialization
applyTo: aPlayer in: aGameStateContext
	aGameStateContext newTransformedLastState: [ :aGameState | aGameState withMirroredSquareAtPosition: squarePosition ]