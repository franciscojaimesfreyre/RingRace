action
withTransformedPositionInGame: aTransformerBlock
	^ self withNewPositionInGame: (aTransformerBlock value: self positionInGame)