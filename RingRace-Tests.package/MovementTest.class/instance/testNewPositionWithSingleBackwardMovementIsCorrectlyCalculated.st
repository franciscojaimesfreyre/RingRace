tests
testNewPositionWithSingleBackwardMovementIsCorrectlyCalculated
	| board backwardMovement oldPosition firstChangedPosition secondChangedPosition |
	board := Board withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new).
	backwardMovement := SingleBackwardMovement new.
	oldPosition := PositionInGame positionedInSquare: 1 withLaps: 1.
	firstChangedPosition := backwardMovement newPositionInGameFrom: oldPosition withBoard: board.
	self assert: firstChangedPosition squareNumber equals: board length.
	self assert: firstChangedPosition laps equals: 0.
	secondChangedPosition := backwardMovement newPositionInGameFrom: firstChangedPosition withBoard: board.
	self assert: secondChangedPosition squareNumber equals: board length - 1.
	self assert: secondChangedPosition laps equals: 0