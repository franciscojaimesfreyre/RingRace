tests
testWhenCreatingAPositionInGameWithNewNumberOfLaps
	| aPositionInGame |
	aPositionInGame := PositionInGame positionedInSquare: 4 withLaps: 3.
	self assert: ( aPositionInGame squareNumber ) equals: 4.
	self assert: ( aPositionInGame laps ) equals: 3.
	
	aPositionInGame := aPositionInGame withLaps: 7.
	
	self assert: ( aPositionInGame squareNumber ) equals: 4.
	self assert: ( aPositionInGame laps ) equals: 7