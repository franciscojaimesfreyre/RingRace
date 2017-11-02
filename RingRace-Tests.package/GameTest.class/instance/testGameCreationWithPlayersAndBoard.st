tests
testGameCreationWithPlayersAndBoard
	| game player board |
	player := Player named: 'Nico'.
	board := Board
		withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new).
	game := Game
		withPlayers: {player}
		withBoard: board
		withDices:
			{(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4 5 6))).
			(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4 5 6)))}
		winningWhen: (ReachedNumberOfLaps reaching: 3).
	self assert: game players equals: {player} asOrderedCollection.
	self assert: game board equals: board