tests
testWhenGivingTurnToAPlayerItChangesState
	| game nico turn dices |
	nico := Player named: 'Nico'.
	dices := {(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4)))}.
	game := Game
		withPlayers: {nico}
		withBoard:
			(Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		withDices: dices
		winningWhen: (ReachedNumberOfLaps reaching: 3).
	self assert: (game stateOf: nico) position equals: 1.
	turn := Turn of: game for: nico withDices: dices.
	nico play: turn.
	self assert: (game stateOf: nico) position equals: 2.
	nico play: turn.
	self assert: (game stateOf: nico) position equals: 4.
	nico play: turn.
	self assert: (game stateOf: nico) position equals: 7.
	nico play: turn.
	self assert: (game stateOf: nico) position equals: 11