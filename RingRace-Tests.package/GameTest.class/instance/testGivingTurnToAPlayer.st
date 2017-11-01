tests
testGivingTurnToAPlayer
	| tmp1 tmp2 tmp3 tmp4 tmp5 |
	tmp2 := Player named: 'Nico'.
	tmp4 := {(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4)))}.
	tmp1 := Game
		withPlayers: {tmp2}
		withBoard:
			(Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		withNumberOfLaps: 3
		withDices: tmp4.
	self assert: (tmp1 stateOf: tmp2) position equals: 1.
	tmp3 := Turn of: tmp1 for: tmp2 withDices: tmp4.
	tmp2 play: tmp3.
	self assert: (tmp1 stateOf: tmp2) position equals: 2.
	tmp2 play: tmp3.
	self assert: (tmp1 stateOf: tmp2) position equals: 4.
	tmp2 play: tmp3.
	self assert: (tmp1 stateOf: tmp2) position equals: 7.
	tmp2 play: tmp3.
	self assert: (tmp1 stateOf: tmp2) position equals: 11