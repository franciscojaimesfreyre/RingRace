tests
testWithOneForwardMovement
	| tmp1 tmp2 tmp3 tmp4 tmp5 |
	tmp1 := Player named: 'Fran'.
	tmp2 := Game
		withPlayers: {tmp1}
		withBoard:
			(Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		withNumberOfLaps: 3
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 3)))}.
	tmp3 := ForwardMovement create.
	tmp4 := (tmp2 stateOf: tmp1) position.
	tmp3 move: tmp1 in: tmp2.
	tmp5 := (tmp2 stateOf: tmp1) position.
	self assert: tmp5 equals: tmp4 + 1