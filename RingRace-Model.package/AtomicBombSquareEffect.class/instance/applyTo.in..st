action
applyTo: aPlayer in: aGameStateContext
	|gameState|
	gameState := aGameStateContext currentState.
	(gameState players) do: [ :eachPlayer |
		gameState := gameState withNewPlayerState: ( ( gameState stateOf: eachPlayer ) withNewPositionInGame: ( PositionInGame positionedInSquare: 1 withLaps: 0 ) ) of: eachPlayer.
	].

	aGameStateContext newState: gameState.