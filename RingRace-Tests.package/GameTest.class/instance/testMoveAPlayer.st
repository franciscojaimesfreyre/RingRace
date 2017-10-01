tests
testMoveAPlayer

	|game player oldPosition newPosition|
	player := Player named: 'Nico'.
	game := Game withPlayers: { player } withBoard: ( Board withSquareEffects: ( OrderedCollection new: 30 withAll: ( NoSquareEffect new ) ) ) withNumberOfLaps: 3 withDices: { Dice withNumbersFrom: ( ReadStream on: #( 1 2 3 4 ) ) }.
	
	oldPosition := (game stateOf: player) position.
	game move: player forward: 1.
	newPosition := (game stateOf: player) position.
	self assert: newPosition equals: ( oldPosition + 1 ).