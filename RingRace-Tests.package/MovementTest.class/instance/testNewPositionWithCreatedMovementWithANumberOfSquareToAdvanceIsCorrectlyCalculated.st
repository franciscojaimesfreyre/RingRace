tests
testNewPositionWithCreatedMovementWithANumberOfSquareToAdvanceIsCorrectlyCalculated
	|board position|
	
	board := Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new).
	position := PositionInGame positionedInSquare: 1 withLaps: 1.
	position := ( MovementInGame advancingWithSquares: 5 ) newPositionInGameFrom: position withBoard: board.
	self assert: position squareNumber equals: 6.
	self assert: position laps equals: 1.
	position := ( MovementInGame advancingWithSquares: -3 ) newPositionInGameFrom: position withBoard: board.
	self assert: position squareNumber equals: 3.
	self assert: position laps equals: 1.
	position := ( MovementInGame advancingWithSquares: 0 ) newPositionInGameFrom: position withBoard: board.
	self assert: position squareNumber equals: 3.
	self assert: position laps equals: 1.