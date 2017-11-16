accessing
withTransformedPlayerStates: aTransformerBlock of: somePlayers
	|newGameState|
	newGameState := self.
	somePlayers do: [ :eachPlayer | newGameState := newGameState withTransformedPlayerState: aTransformerBlock of: eachPlayer ].
	^newGameState