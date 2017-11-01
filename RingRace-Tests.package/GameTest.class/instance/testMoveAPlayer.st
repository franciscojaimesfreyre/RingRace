tests
testMoveAPlayer
	| tmp1 tmp2 tmp3 tmp4 |
	tmp2 := Player named: 'Nico'.
	tmp1 := Game
		withPlayers: {tmp2}
		withBoard:
			(Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		withNumberOfLaps: 3
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4)))}.
	tmp3 := (tmp1 stateOf: tmp2) position.
	tmp1 move: tmp2 forward: 1.
	tmp4 := (tmp1 stateOf: tmp2) position.
	self assert: tmp4 equals: tmp3 + 1.
	tmp1 move: tmp2 backward: 1.
	tmp4 := (tmp1 stateOf: tmp2) position.
	self assert: tmp4 equals: tmp3