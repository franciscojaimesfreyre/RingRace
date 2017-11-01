accessing
at: aPlayer put: aState
	^(boardPlayerStates alterStateOf: aPlayer with: aState)