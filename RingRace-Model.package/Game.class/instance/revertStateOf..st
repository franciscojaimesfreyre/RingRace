action
revertStateOf: aPlayer 
	|playerStatesStack|
	playerStatesStack := playerStates at: aPlayer.
	playerStatesStack pop.
	^(playerStates at: aPlayer put: playerStatesStack) top   