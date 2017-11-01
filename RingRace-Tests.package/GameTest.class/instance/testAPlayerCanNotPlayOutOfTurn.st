tests
testAPlayerCanNotPlayOutOfTurn
	| tmp1 tmp2 tmp3 tmp4 tmp5 |
	tmp2 := Player named: 'Nico'.
	tmp3 := Player named: 'Santi'.
	tmp4 := {tmp2.
	tmp3}.
	tmp1 := Game
		withPlayers: tmp4
		withBoard:
			(Board
				withSquareEffects: (OrderedCollection new: 10 withAll: NoSquareEffect new))
		withNumberOfLaps: 2
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(3 2 5 1 2 3 5)))}.
	tmp1 giveTurnTo: tmp2.
	self should: [ tmp1 giveTurnTo: tmp2 ] raise: GameException