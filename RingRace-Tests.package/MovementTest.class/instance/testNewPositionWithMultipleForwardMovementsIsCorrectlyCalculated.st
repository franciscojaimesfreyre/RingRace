tests
testNewPositionWithMultipleForwardMovementsIsCorrectlyCalculated
	|board movement oldPosition newPosition1 |
	
	board := Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new).
	movement := (SingleForwardMovement inBoard: board) times: 6.
	oldPosition := PositionInGame positionedInSquare: 1 withLaps: 1.
	newPosition1 := movement newPositionInGameFrom: oldPosition.
	self assert: newPosition1 positionInBoard equals: 7.
	self assert: newPosition1 laps equals: 1.