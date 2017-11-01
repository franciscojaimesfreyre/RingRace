tests
testPlayingWithSquareEffectsUntilWinner
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
					AtomicBombSquareEffect new.
					SpeedUpSquareEffect new.
					TimeMachineSquareEffect new.
					WormHoleSquareEffect new.
					(MoonwalkSquareEffect newWithSquaresToMove: 3).
					NoSquareEffect new.
					NoSquareEffect new})
		withNumberOfLaps: 3
		withDices:
			{(Dice withNumbersFrom: (ReadStream on: #(3 2 5 1 2 2 3 2))).
			(Dice withNumbersFrom: (ReadStream on: #(2 1 3 4 3 6 3 2)))}.
	self
		assert: (tmp1 stateOf: tmp2) position == 1;
		assert: (tmp1 stateOf: tmp2) laps equals: 0;
		assert: (tmp1 stateOf: tmp3) position == 1;
		assert: (tmp1 stateOf: tmp3) laps equals: 0.
	tmp1 giveTurnTo: tmp2.
	self
		assert: (tmp1 stateOf: tmp2) position == 2;
		assert: (tmp1 stateOf: tmp2) laps equals: 0;
		assert: (tmp1 stateOf: tmp3) position == 1;
		assert: (tmp1 stateOf: tmp3) laps equals: 0.
	tmp1 giveTurnTo: tmp3.
	self
		assert: (tmp1 stateOf: tmp2) position == 2;
		assert: (tmp1 stateOf: tmp2) laps equals: 0;
		assert: (tmp1 stateOf: tmp3) position == 8;
		assert: (tmp1 stateOf: tmp3) laps equals: 0.
	tmp1 giveTurnTo: tmp2.
	self
		assert: (tmp1 stateOf: tmp2) position == 1;
		assert: (tmp1 stateOf: tmp2) laps equals: 1;
		assert: (tmp1 stateOf: tmp3) position == 8;
		assert: (tmp1 stateOf: tmp3) laps equals: 0.
	tmp1 giveTurnTo: tmp3.
	self
		assert: (tmp1 stateOf: tmp2) position == 1;
		assert: (tmp1 stateOf: tmp2) laps equals: 1;
		assert: (tmp1 stateOf: tmp3) position == 8;
		assert: (tmp1 stateOf: tmp3) laps equals: 1.
	tmp1 giveTurnTo: tmp2.
	self
		assert: (tmp1 stateOf: tmp2) position == 2;
		assert: (tmp1 stateOf: tmp2) laps equals: 1;
		assert: (tmp1 stateOf: tmp3) position == 8;
		assert: (tmp1 stateOf: tmp3) laps equals: 1.
	tmp1 giveTurnTo: tmp3.
	self
		assert: (tmp1 stateOf: tmp2) position == 8;
		assert: (tmp1 stateOf: tmp2) laps equals: 0;
		assert: (tmp1 stateOf: tmp3) position == 7;
		assert: (tmp1 stateOf: tmp3) laps equals: 2.
	tmp1 giveTurnTo: tmp2.
	self
		assert: (tmp1 stateOf: tmp2) position == 8;
		assert: (tmp1 stateOf: tmp2) laps equals: 0;
		assert: (tmp1 stateOf: tmp3) position == 7;
		assert: (tmp1 stateOf: tmp3) laps equals: 2.
	tmp1 giveTurnTo: tmp3.
	self
		assert: (tmp1 stateOf: tmp2) position == 8;
		assert: (tmp1 stateOf: tmp2) laps equals: 0;
		assert: (tmp1 stateOf: tmp3) position == 1;
		assert: (tmp1 stateOf: tmp3) laps equals: 3;
		assert: tmp1 winner == tmp3