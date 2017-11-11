action
withNewPlayerState: aPlayerState of: aPlayer

	| newStatesPerPlayer |
	newStatesPerPlayer := playerStates clone.
	newStatesPerPlayer at: aPlayer put: aPlayerState.
	
	^self class withPlayerStates: newStatesPerPlayer withCurrentTurnOf: playerOfCurrentTurn.