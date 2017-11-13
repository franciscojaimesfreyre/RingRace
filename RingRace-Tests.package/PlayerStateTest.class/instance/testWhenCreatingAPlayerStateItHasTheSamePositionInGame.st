tests
testWhenCreatingAPlayerStateItHasTheSamePositionInGame
	|aPlayerState aPositionInGame|
	aPositionInGame := PositionInGame positionedInSquare: 4 withLaps: 3.
	aPlayerState := PlayerState withPositionInGame: aPositionInGame.
	self assert: ( aPlayerState positionInGame ) equals: aPositionInGame.