tests
testWithOneBackwardMovement
	| player game movement oldPosition newPosition newPosition2 |
	player := Player named: 'Fran'.
	game := Game
		withPlayers: {player}
		withBoard: (Board withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		withNumberOfLaps: 3
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 3)))}.
	movement := BackwardMovement moving: player into: game.
	oldPosition := (game stateOf: player) position.
	movement execute.
	newPosition := (game stateOf: player) position.
	self assert: newPosition equals: game board length.
	movement execute.
	newPosition2:= (game stateOf: player ) position.
	self assert: newPosition2 equals: newPosition - 1