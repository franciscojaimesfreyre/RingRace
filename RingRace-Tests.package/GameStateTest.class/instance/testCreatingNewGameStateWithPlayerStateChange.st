tests
testCreatingNewGameStateWithPlayerStateChange
	|aGameState1 aGameState2 nico claudio |
	nico := Player named: 'Nico'.
	claudio := Player named: 'claudio'.
	aGameState1 := GameState withPlayers: { nico. claudio }.
	
	self assert: (aGameState1 stateOf: nico ) positionInGame positionInBoard equals: 1.
	self assert: (aGameState1 stateOf: nico ) positionInGame laps equals: 0.
	self assert: (aGameState1 stateOf: claudio ) positionInGame positionInBoard equals: 1.
	self assert: (aGameState1 stateOf: claudio ) positionInGame laps equals: 0.
	
	self assert: (aGameState1 playerInTurn ) equals: nico.
	
	aGameState2 := aGameState1 withNewPlayerState: ( PlayerState withPositionInGame: ( PositionInGame  positionedInSquare: 5 withLaps: 3 ) ) of: nico.
	
	self assert: (aGameState2 stateOf: nico ) positionInGame positionInBoard equals: 5.
	self assert: (aGameState2 stateOf: nico ) positionInGame laps equals: 3.
	self assert: (aGameState2 stateOf: claudio ) positionInGame positionInBoard equals: 1.
	self assert: (aGameState2 stateOf: claudio ) positionInGame laps equals: 0.
	
	self assert: (aGameState2 playerInTurn ) equals: nico.