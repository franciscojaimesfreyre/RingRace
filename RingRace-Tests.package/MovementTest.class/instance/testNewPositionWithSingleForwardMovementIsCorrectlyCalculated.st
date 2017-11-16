tests
testNewPositionWithSingleForwardMovementIsCorrectlyCalculated
	| board movement oldPosition firstChangedPosition secondChangedPosition |
	board := Board withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new).
	movement := SingleForwardMovement new.
	oldPosition := PositionInGame positionedInSquare: 1 withLaps: 1.
	firstChangedPosition := movement newPositionInGameFrom: oldPosition withBoard: board.
	self assert: firstChangedPosition squareNumber equals: 2.
	self assert: firstChangedPosition laps equals: 1.
	secondChangedPosition := movement newPositionInGameFrom: firstChangedPosition withBoard: board.
	self assert: secondChangedPosition squareNumber equals: 3.
	self assert: secondChangedPosition laps equals: 1