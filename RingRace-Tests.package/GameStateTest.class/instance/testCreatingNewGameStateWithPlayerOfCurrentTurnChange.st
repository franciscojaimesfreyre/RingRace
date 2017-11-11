tests
testCreatingNewGameStateWithPlayerOfCurrentTurnChange
	|aGameState1 aGameState2 nico claudio |
	nico := Player named: 'Nico'.
	claudio := Player named: 'claudio'.
	aGameState1 := GameState withPlayers: { nico. claudio }.
	
	self assert: (aGameState1 stateOf: nico ) position equals: 1.
	self assert: (aGameState1 stateOf: nico ) laps equals: 0.
	self assert: (aGameState1 stateOf: claudio ) position equals: 1.
	self assert: (aGameState1 stateOf: claudio ) laps equals: 0.
	
	self assert: (aGameState1 playerOfCurrentTurn ) equals: nico.
	
	aGameState2 := aGameState1 withNewTurnOf: claudio.
	
	self assert: (aGameState2 stateOf: nico ) position equals: 1.
	self assert: (aGameState2 stateOf: nico ) laps equals: 0.
	self assert: (aGameState2 stateOf: claudio ) position equals: 1.
	self assert: (aGameState2 stateOf: claudio ) laps equals: 0.
	
	self assert: (aGameState2 playerOfCurrentTurn ) equals: claudio.