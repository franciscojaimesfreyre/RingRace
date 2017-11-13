tests
testWhenCreatingAPlayerStateWithNewPositionInGameItHasTheSamePositionInGame
	|aPlayerState aPositionInGame1 aPositionInGame2|
	aPositionInGame1 := PositionInGame positionedInSquare: 4 withLaps: 3.
	aPlayerState := PlayerState withPositionInGame: aPositionInGame1.
	self assert: ( aPlayerState positionInGame ) equals: aPositionInGame1.
	
	aPositionInGame2 := PositionInGame positionedInSquare: 7 withLaps: 5.
	aPlayerState := aPlayerState withNewPositionInGame: aPositionInGame2.
	self assert: ( aPlayerState positionInGame ) equals: aPositionInGame2.