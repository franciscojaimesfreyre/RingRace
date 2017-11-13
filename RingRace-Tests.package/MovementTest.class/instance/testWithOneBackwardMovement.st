tests
testWithOneBackwardMovement
	| player gameStateContext movement oldPosition newPosition newPosition2 |
	player := Player named: 'Fran'.
	gameStateContext := GameStateContext 
		withPlayers: {player}
		in:
			(Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new)).
	movement := SingleBackwardMovement moving: player into: gameStateContext.
	oldPosition := (gameStateContext currentState stateOf: player) positionInBoard.
	movement execute.
	newPosition := (gameStateContext currentState stateOf: player) positionInBoard.
	self assert: newPosition equals: gameStateContext board length.
	movement execute.
	newPosition2 := (gameStateContext currentState stateOf: player) positionInBoard.
	self assert: newPosition2 equals: newPosition - 1