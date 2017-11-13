action
withLaps: aNumberOfLaps
	^self withNewPositionInGame: ( ( self positionInGame ) withLaps: aNumberOfLaps ).