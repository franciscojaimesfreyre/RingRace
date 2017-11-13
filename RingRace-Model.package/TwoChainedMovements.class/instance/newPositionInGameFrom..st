execute
newPositionInGameFrom: aPositionInGame 
	^secondMovement newPositionInGameFrom: (firstMovement newPositionInGameFrom: aPositionInGame).