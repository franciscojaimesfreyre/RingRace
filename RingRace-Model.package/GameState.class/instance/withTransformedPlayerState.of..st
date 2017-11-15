accessing
withTransformedPlayerState: aTransformerBlock of: aPlayer
	^self withNewPlayerState: (aTransformerBlock value: (self stateOf: aPlayer)) of: aPlayer