tests
testGameCreation

	|game player players dices |
	player := Player named: 'Nico'.
	players := #( player ).
	dices := { RandomDice withFaces: 6. RandomDice withFaces: 6 }.
	game := Game withPlayers: players withBoardSize: 30 withNumberOfLaps: 3 withDices: dices.
	self assert: (game players) equals: ( players asOrderedCollection ).