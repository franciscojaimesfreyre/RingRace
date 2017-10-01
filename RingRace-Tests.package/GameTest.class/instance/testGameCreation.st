tests
testGameCreation
	| game player |
	player := Player named: 'Nico'.
	game := Game
		withPlayers: {player}
		withBoard: ( Board withSquareEffects: ( OrderedCollection new: 30 withAll: ( NoSquareEffect new ) ) )
		withNumberOfLaps: 3
		withDices:
			{(Dice withNumbersFrom: ( ReadStream on: #( 1 2 3 4 5 6) )).
			(Dice withNumbersFrom: ( ReadStream on: #( 1 2 3 4 5 6) ))}.
	self assert: game players equals:
		{player} asOrderedCollection