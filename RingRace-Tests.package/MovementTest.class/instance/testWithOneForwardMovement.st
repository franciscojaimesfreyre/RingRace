tests
testWithOneForwardMovement
	|player game movement oldPosition newPosition|
	player := Player named: 'Fran'.
	game := Game withPlayers: { player  } withBoardSize: 30  withNumberOfLaps: 3 withDices: { DeterministicDice withNumbers: #( 1 2 3 ) }.
	
	movement := ForwardMovement create.
	
	oldPosition := (game stateOf: player) position.
	movement move: player in: game.
	newPosition := (game stateOf: player) position.
	self assert: newPosition equals: oldPosition next.
	