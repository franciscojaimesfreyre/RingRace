tests
testPlayingWithEmptySquareEffectsUntilWinner
	| tmp1 tmp2 tmp3 tmp4 |
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
		withDices:
			{(Dice withNumbersFrom: (ReadStream on: #(3 2 5 1 2 3 5))).
			(Dice withNumbersFrom: (ReadStream on: #(2 1 3 4 3 4 3)))}.
	self
		assert: (tmp1 stateOf: tmp2) position == 1;
		assert: (tmp1 stateOf: tmp2) laps equals: 0;
		assert: (tmp1 stateOf: tmp3) position == 1;
		assert: (tmp1 stateOf: tmp3) laps equals: 0.
	tmp1 giveTurnTo: tmp2.
	self
		assert: (tmp1 stateOf: tmp2) position == 6;
		assert: (tmp1 stateOf: tmp2) laps equals: 0;
		assert: (tmp1 stateOf: tmp3) position == 1;
		assert: (tmp1 stateOf: tmp3) laps equals: 0.
	tmp1 giveTurnTo: tmp3.
	self
		assert: (tmp1 stateOf: tmp2) position == 6;
		assert: (tmp1 stateOf: tmp2) laps equals: 0;
		assert: (tmp1 stateOf: tmp3) position == 4;
		assert: (tmp1 stateOf: tmp3) laps equals: 0.
	tmp1 giveTurnTo: tmp2.
	self
		assert: (tmp1 stateOf: tmp2) position == 4;
		assert: (tmp1 stateOf: tmp2) laps equals: 1;
		assert: (tmp1 stateOf: tmp3) position == 4;
		assert: (tmp1 stateOf: tmp3) laps equals: 0.
	tmp1 giveTurnTo: tmp3.
	self
		assert: (tmp1 stateOf: tmp2) position == 4;
		assert: (tmp1 stateOf: tmp2) laps equals: 1;
		assert: (tmp1 stateOf: tmp3) position == 9;
		assert: (tmp1 stateOf: tmp3) laps equals: 0.
	tmp1 giveTurnTo: tmp2.
	self
		assert: (tmp1 stateOf: tmp2) position == 9;
		assert: (tmp1 stateOf: tmp2) laps equals: 1;
		assert: (tmp1 stateOf: tmp3) position == 9;
		assert: (tmp1 stateOf: tmp3) laps equals: 0.
	tmp1 giveTurnTo: tmp3.
	self
		assert: (tmp1 stateOf: tmp2) position == 9;
		assert: (tmp1 stateOf: tmp2) laps equals: 1;
		assert: (tmp1 stateOf: tmp3) position == 6;
		assert: (tmp1 stateOf: tmp3) laps equals: 1.
	tmp1 giveTurnTo: tmp2.
	self
		assert: (tmp1 stateOf: tmp2) position == 1;
		assert: (tmp1 stateOf: tmp2) laps equals: 2;
		assert: (tmp1 stateOf: tmp3) position == 6;
		assert: (tmp1 stateOf: tmp3) laps equals: 1;
		assert: tmp1 winner == tmp2