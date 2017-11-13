execute
newStateFrom: aPlayerState
	^aPlayerState withNewPositionInGame: ( self newPositionInGameFrom: ( aPlayerState positionInGame ) )