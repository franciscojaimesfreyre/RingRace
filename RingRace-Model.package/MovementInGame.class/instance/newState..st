execute
newState: aPlayerState
	^aPlayerState withNewPositionInGame: ( self newPositionInGameFrom: ( aPlayerState positionInGame ) )