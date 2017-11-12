tests
testAfterCreatingGameStateThePlayerTurnIsOwnedByTheFirstPlayer
	|nico claudio |
	nico := Player named: 'Nico'.
	claudio := Player named: 'claudio'.
	self assert: ( ( GameState withPlayers: { nico. claudio } ) playerInTurn ) equals: nico