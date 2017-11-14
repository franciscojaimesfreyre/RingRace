tests
testNewPositionWithTwoChainedForwardMovementsIsCorrectlyCalculated
	|board singleMovement compositeMovement oldPosition newPosition1 |
	
	board := Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new).
	singleMovement := (SingleForwardMovement new).
	compositeMovement := TwoChainedMovements withFirstMovement: singleMovement andSecondMovement: singleMovement.
	oldPosition := PositionInGame positionedInSquare: 1 withLaps: 1.
	newPosition1 := compositeMovement newPositionInGameFrom: oldPosition withBoard: board.
	self assert: newPosition1 positionInBoard equals: 3.
	self assert: newPosition1 laps equals: 1.