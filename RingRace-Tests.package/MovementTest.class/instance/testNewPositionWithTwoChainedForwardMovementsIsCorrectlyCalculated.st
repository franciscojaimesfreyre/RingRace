tests
testNewPositionWithTwoChainedForwardMovementsIsCorrectlyCalculated
	| board singleMovement compositeMovement oldPosition newPosition |
	board := Board withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new).
	singleMovement := SingleForwardMovement new.
	compositeMovement := TwoChainedMovements withFirstMovement: singleMovement andSecondMovement: singleMovement.
	oldPosition := PositionInGame positionedInSquare: 1 withLaps: 1.
	newPosition := compositeMovement newPositionInGameFrom: oldPosition withBoard: board.
	self assert: newPosition squareNumber equals: 3.
	self assert: newPosition laps equals: 1