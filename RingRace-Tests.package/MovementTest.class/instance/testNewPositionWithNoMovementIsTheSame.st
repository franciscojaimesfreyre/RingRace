tests
testNewPositionWithNoMovementIsTheSame
	|board movement oldPosition|
	
	board := Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new).
	movement := NoMovement new.
	oldPosition := PositionInGame positionedInSquare: 1 withLaps: 1.
	
	self assert: ( movement newPositionInGameFrom: oldPosition withBoard: board ) equals: oldPosition.