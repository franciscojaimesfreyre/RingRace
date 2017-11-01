tests
testPlayingUntilTimeMachineEffect
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
					TimeMachineSquareEffect new.
					NoSquareEffect new})
		withNumberOfLaps: 2
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 1 2)))}.
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
		assert: (tmp1 stateOf: tmp3) position == 2.
	tmp1 giveTurnTo: tmp2.
	self
		assert: (tmp1 stateOf: tmp2) position == 2;
		assert: (tmp1 stateOf: tmp3) position == 2