execute
newPlayerStateFrom: aPlayerState withBoard: aBoard
	^aPlayerState withNewPositionInGame: ( self newPositionInGameFrom: ( aPlayerState positionInGame ) withBoard: aBoard )