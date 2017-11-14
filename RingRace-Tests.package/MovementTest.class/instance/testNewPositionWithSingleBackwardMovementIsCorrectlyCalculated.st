tests
testNewPositionWithSingleBackwardMovementIsCorrectlyCalculated
	|board movement oldPosition newPosition1 newPosition2 |
	
	board := Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new).
	movement := SingleBackwardMovement new.
	oldPosition := PositionInGame positionedInSquare: 1 withLaps: 1.
	newPosition1 := movement newPositionInGameFrom: oldPosition withBoard: board.
	self assert: newPosition1 positionInBoard equals: board length.
	self assert: newPosition1 laps equals: 0.
	newPosition2 := movement newPositionInGameFrom: newPosition1 withBoard: board.
	self assert: newPosition2 positionInBoard equals: ( board length - 1 ).
	self assert: newPosition2 laps equals: 0.