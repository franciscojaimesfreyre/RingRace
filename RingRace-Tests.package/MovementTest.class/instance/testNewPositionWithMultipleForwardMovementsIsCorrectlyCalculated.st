tests
testNewPositionWithMultipleForwardMovementsIsCorrectlyCalculated
	| board movement oldPosition newPosition |
	board := Board withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new).
	movement := SingleForwardMovement new times: 6.
	oldPosition := PositionInGame positionedInSquare: 1 withLaps: 1.
	newPosition := movement newPositionInGameFrom: oldPosition withBoard: board.
	self assert: newPosition squareNumber equals: 7.
	self assert: newPosition laps equals: 1