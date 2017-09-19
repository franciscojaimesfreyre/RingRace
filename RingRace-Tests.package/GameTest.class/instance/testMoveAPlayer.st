tests
testMoveAPlayer

	|game player oldPosition newPosition|
	player := Player named: 'Nico'.
	game := Game withPlayers: { player } withBoardSize: 30 withNumberOfLaps: 3 withDices: { DeterministicDice withNumbers: #( 1 2 3 4 ) }.
	
	oldPosition := (game stateOf: player) position.
	game move: player forward: 1.
	newPosition := (game stateOf: player) position.
	self assert: newPosition equals: ( oldPosition next ).