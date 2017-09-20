tests
testAPlayerCanNotPlayOutOfTurn
	| game player1 player2 players firstSquare |
	player1 := Player named: 'Nico'.
	player2 := Player named: 'Santi'.
	players := {player1.
	player2}.
	game := Game
		withPlayers: players
		withBoardSize: 10
		withNumberOfLaps: 2
		withDices: {(DeterministicDice withNumbers: #(3 2 5 1 2 3 5))}.
	firstSquare := game board firstSquare.
	game giveTurnTo: player1.
	self should: [ game giveTurnTo: player1 ] raise: NotYourTurnException