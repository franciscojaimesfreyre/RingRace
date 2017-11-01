tests
testWhenPlayerMovesForwardPositionIsUpdated
	|player game movement oldPosition newPosition| 
	player := Player named: 'Fran'.
	game := Game withPlayers: { player  } withBoard: ( Board withSquareEffects: ( OrderedCollection new: 30 withAll: ( NoSquareEffect new ) ) )  withNumberOfLaps: 3 withDices: { Dice withNumbersFrom: ( ReadStream on: #( 1 2 3 ) ) }.
	
	movement := ConsecutiveForwardMovement create.
	
	oldPosition := (game stateOf: player) position.
	movement move: player in: game.
	newPosition := (game stateOf: player) position.
	self assert: newPosition equals: (oldPosition + 1).
	