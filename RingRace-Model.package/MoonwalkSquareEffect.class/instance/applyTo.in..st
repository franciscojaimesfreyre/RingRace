action
applyTo: aPlayer in: aGameStateContext
	|gameState|
	gameState := aGameStateContext currentState.
	gameState players reject: [ :player | player = aPlayer ] thenDo: [ :player | gameState := gameState withNewPlayerState: ( ( gameState stateOf: player ) withNewPositionInGame: ( ( (SingleBackwardMovement new) times: squaresToMove ) newPositionInGameFrom: ( ( gameState stateOf: player ) positionInGame ) withBoard: aGameStateContext board ) ) of: player ].
	aGameStateContext newState: gameState.