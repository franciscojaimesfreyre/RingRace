tests
testPlayingUntilMoonwalkEffect
	| tmp1 tmp2 tmp3 tmp4 |
	tmp2 := Player named: 'Nico'.
	tmp3 := Player named: 'Santi'.
	tmp4 := {tmp2.
	tmp3}.
	tmp1 := Game
		withPlayers: tmp4
		withBoard:
			(Board
				withSquareEffects:
					{NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					(MoonwalkSquareEffect newWithSquaresToMove: 2).
					NoSquareEffect new})
		withNumberOfLaps: 2
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 2)))}.
	self
		assert: (tmp1 stateOf: tmp2) position == 1;
		assert: (tmp1 stateOf: tmp3) position == 1.
	tmp1 giveTurnTo: tmp2.
	self
		assert: (tmp1 stateOf: tmp2) position == 2;
		assert: (tmp1 stateOf: tmp3) position == 1.
	tmp1 giveTurnTo: tmp3.
	self
		assert: (tmp1 stateOf: tmp2) position == 2;
		assert: (tmp1 stateOf: tmp3) position == 3.
	tmp1 giveTurnTo: tmp2.
	self
		assert: (tmp1 stateOf: tmp2) position == 4;
		assert: (tmp1 stateOf: tmp3) position == 1