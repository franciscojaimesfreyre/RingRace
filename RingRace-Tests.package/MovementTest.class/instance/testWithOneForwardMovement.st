tests
testWithOneForwardMovement
	| player gameStateContext movement oldPosition newPosition |
	player := Player named: 'Fran'.
	gameStateContext := GameStateContext 
		withPlayers: {player}
		in:
			(Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new)).
	movement := SingleForwardMovement moving: player into: gameStateContext.
	oldPosition := (gameStateContext currentState stateOf: player) positionInBoard.
	movement execute.
	newPosition := (gameStateContext currentState stateOf: player) positionInBoard.
	self assert: newPosition equals: oldPosition + 1