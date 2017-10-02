accessing
at: aPlayer put: aState
|playerStatesStack|
	playerStatesStack := playerStates at: aPlayer.
	playerStatesStack push: aState. 
	^ (playerStates at: aPlayer put: playerStatesStack) top