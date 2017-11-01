tests
testWithOneBackwardMovement
	| tmp1 tmp2 tmp3 tmp4 tmp5 tmp6 |
	tmp1 := Player named: 'Fran'.
	tmp2 := Game
		withPlayers: {tmp1}
		withBoard:
			(Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		withNumberOfLaps: 3
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 3)))}.
	tmp3 := BackwardMovement create.
	tmp4 := (tmp2 stateOf: tmp1) position.
	tmp3 move: tmp1 in: tmp2.
	tmp5 := (tmp2 stateOf: tmp1) position.
	self assert: tmp5 equals: tmp2 board length.
	tmp3 move: tmp1 in: tmp2.
	tmp6 := (tmp2 stateOf: tmp1) position.
	self assert: tmp6 equals: tmp5 - 1