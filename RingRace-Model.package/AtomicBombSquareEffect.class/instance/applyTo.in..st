action
applyTo: aPlayer in: aGameStateContext
	| gameState undoEffectBlock |
	gameState := aGameStateContext currentState.
	undoEffectBlock := aGameStateContext createUndoPositionChangeBlockFor: ( gameState players ).
	
	aGameStateContext newState: 
			( ( gameState withTransformedPlayerStates: [ :eachPlayerState | eachPlayerState withNewPositionInGame: (PositionInGame positionedInSquare: 1 withLaps: 0) ]
				of: gameState players) withUndoLastEffectBlock: undoEffectBlock ).