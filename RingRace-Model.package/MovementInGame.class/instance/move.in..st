execute
move: aPlayer in: aGameStateContext
	|playerState|
	playerState := aGameStateContext currentState stateOf: aPlayer.
	aGameStateContext newState: (aGameStateContext currentState withNewPlayerState: ( self newPlayerStateFrom: playerState withBoard: aGameStateContext board ) of: aPlayer).