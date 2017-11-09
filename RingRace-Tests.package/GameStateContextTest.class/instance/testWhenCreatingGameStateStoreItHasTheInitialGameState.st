tests
testWhenCreatingGameStateStoreItHasTheInitialGameState
	|nico claudio gameState aGameStateContext|
	
	nico := Player named: 'Nico'.
	claudio := Player named: 'Claudio'.
	
	aGameStateContext := GameStateContext withPlayers: { nico. claudio }.
	gameState := aGameStateContext currentState.
	
	self assert: ( (gameState stateOf: nico) position ) equals: 1.
	self assert: ( (gameState stateOf: nico) laps ) equals: 0.
	
	self assert: ( (gameState stateOf: claudio) position ) equals: 1.
	self assert: ( (gameState stateOf: claudio) laps ) equals: 0
	
	