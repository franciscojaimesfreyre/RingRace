tests
testGivingTurnToAPlayer
	| game player turn dices square |
	player := Player named: 'Nico'.
	dices := {(DeterministicDice withNumbers: #(1 2 3 4))}.
	game := Game
		withPlayers: {player}
		withBoardSize: 30
		withNumberOfLaps: 3
		withDices: dices.
	square := game board firstSquare.
	self assert: (game stateOf: player) position equals: square.
	turn := Turn of: game for: player withDices: dices.
	square := square next.
	player play: turn.
	self assert: (game stateOf: player) position equals: square.
	square := square next next.
	player play: turn.
	self assert: (game stateOf: player) position equals: square.
	square := square next next next.
	player play: turn.
	self assert: (game stateOf: player) position equals: square.
	square := square next next next next.
	player play: turn.
	self assert: (game stateOf: player) position equals: square