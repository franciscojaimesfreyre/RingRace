tests
testWhenCreatingAPositionInGameWithNewPositionInBoard
	| aPositionInGame |
	aPositionInGame := PositionInGame withPositionInBoard: 4 withLaps: 3.
	self assert: ( aPositionInGame positionInBoard ) equals: 4.
	self assert: ( aPositionInGame laps ) equals: 3.
	
	aPositionInGame := aPositionInGame withNewPositionInBoard: 6.
	
	self assert: ( aPositionInGame positionInBoard ) equals: 6.
	self assert: ( aPositionInGame laps ) equals: 3