action
newState: aGameState 
	gameStates addLast: aGameState.
	notifyStateUpdateBlock value.