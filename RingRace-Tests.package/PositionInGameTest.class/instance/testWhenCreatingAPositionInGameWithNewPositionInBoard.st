tests
testWhenCreatingAPositionInGameWithNewPositionInBoard
	| aPositionInGame |
	aPositionInGame := PositionInGame positionedInSquare: 4 withLaps: 3.
	self assert: ( aPositionInGame squareNumber ) equals: 4.
	self assert: ( aPositionInGame laps ) equals: 3.
	
	aPositionInGame := aPositionInGame positionedInSquare: 6.
	
	self assert: ( aPositionInGame squareNumber ) equals: 6.
	self assert: ( aPositionInGame laps ) equals: 3