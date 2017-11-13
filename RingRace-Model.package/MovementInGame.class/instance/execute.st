execute
execute
	gameStateContext newStateFrom: ( gameStateContext currentState withNewPlayerState: ( self newStateFrom: (gameStateContext currentState stateOf: player ) ) of: player )