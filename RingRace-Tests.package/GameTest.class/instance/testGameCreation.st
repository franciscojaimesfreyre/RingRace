tests
testGameCreation
	| tmp1 tmp2 |
	tmp2 := Player named: 'Nico'.
	tmp1 := Game
		withPlayers: {tmp2}
		withBoard:
			(Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		withNumberOfLaps: 3
		withDices:
			{(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4 5 6))).
			(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4 5 6)))}.
	self assert: tmp1 players equals: {tmp2} asOrderedCollection