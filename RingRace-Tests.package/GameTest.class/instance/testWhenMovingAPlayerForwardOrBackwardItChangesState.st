tests
testWhenMovingAPlayerForwardOrBackwardItChangesState
	| game nico oldPosition newPosition |
	nico := Player named: 'Nico'.
	game := Game
		withPlayers: {nico}
		withBoard:
			(Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4)))}
		winningWhen: (ReachedNumberOfLaps reaching: 3).
	oldPosition := (game stateOf: nico) position.
	game move: nico squares: 1.
	newPosition := (game stateOf: nico) position.
	self assert: newPosition equals: oldPosition + 1.
	game move: nico squares: -1.
	newPosition := (game stateOf: nico) position.
	self assert: newPosition equals: oldPosition