tests
testWhenCreatingAPositionInGameItHasTheSamePositionAndTheSameLaps
	| aPositionInGame |
	aPositionInGame := PositionInGame positionedInSquare: 4 withLaps: 3.
	self assert: ( aPositionInGame squareNumber ) equals: 4.
	self assert: ( aPositionInGame laps ) equals: 3