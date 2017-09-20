tests
testGameCreation
	| game player |
	player := Player named: 'Nico'.
	game := Game
		withPlayers: {player}
		withBoardSize: 30
		withNumberOfLaps: 3
		withDices:
			{(RandomDice withFaces: 6).
			(RandomDice withFaces: 6)}.
	self assert: game players equals:
		{player} asOrderedCollection