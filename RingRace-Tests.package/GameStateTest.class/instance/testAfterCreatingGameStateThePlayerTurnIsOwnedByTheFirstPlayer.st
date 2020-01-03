tests
testAfterCreatingGameStateThePlayerTurnIsOwnedByTheFirstPlayer
	|nico claudio board |
	board := Board withSquareEffects: (OrderedCollection new: 10 withAll: NoSquareEffect new).
	nico := Player named: 'Nico'.
	claudio := Player named: 'claudio'.
	self assert: ( ( GameState withPlayers: { nico. claudio } andABoard: board ) playerInTurn ) equals: nico