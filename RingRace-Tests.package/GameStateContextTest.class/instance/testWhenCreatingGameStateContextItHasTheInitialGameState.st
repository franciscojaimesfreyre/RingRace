tests
testWhenCreatingGameStateContextItHasTheInitialGameState
	|nico claudio gameState aGameStateContext|
	
	nico := Player named: 'Nico'.
	claudio := Player named: 'Claudio'.
	
	aGameStateContext := GameStateContext withPlayers: { nico. claudio } in: (self board) andWhenStateIsUpdatedDo: [].
	gameState := aGameStateContext currentState.
	
	self assert: ( (gameState stateOf: nico) positionInGame positionInBoard ) equals: 1.
	self assert: ( (gameState stateOf: nico) positionInGame laps ) equals: 0.
	
	self assert: ( (gameState stateOf: claudio) positionInGame positionInBoard ) equals: 1.
	self assert: ( (gameState stateOf: claudio) positionInGame laps ) equals: 0
	
	