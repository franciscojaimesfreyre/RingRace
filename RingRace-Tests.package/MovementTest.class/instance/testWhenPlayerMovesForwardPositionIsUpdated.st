tests
testWhenPlayerMovesForwardPositionIsUpdated
	| player game movement oldPosition newPosition |
	player := Player named: 'Fran'.
	game := Game
		withPlayers: {player}
		withBoard:
			(Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 3)))}
		winningWhen: (ReachedNumberOfLaps reaching: 3).
	movement := ForwardMovement moving: player into: game.
	oldPosition := (game stateOf: player) position.
	movement execute.
	newPosition := (game stateOf: player) position.
	self assert: newPosition equals: oldPosition + 1