tests
testWhenMovingAPlayerForwardOrBackwardItChangesState
	| game nico oldPosition newPosition |
	nico := Player named: 'Nico'.
	game := Game
		withPlayers: {nico}
		withBoard: (Board withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		withNumberOfLaps: 3
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4)))}.
	oldPosition := (game stateOf: nico) position.
	game move: nico forward: 1.
	newPosition := (game stateOf: nico) position.
	self assert: newPosition equals: oldPosition + 1.
	game move: nico backward: 1.
	newPosition := (game stateOf: nico) position.
	self assert: newPosition equals: oldPosition