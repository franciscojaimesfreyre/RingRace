tests
testCreatingNewGameStateWithPlayerStateChange
	|aGameState1 aGameState2 nico claudio |
	nico := Player named: 'Nico'.
	claudio := Player named: 'claudio'.
	aGameState1 := GameState withPlayers: { nico. claudio }.
	
	self assert: (aGameState1 stateOf: nico ) position equals: 1.
	self assert: (aGameState1 stateOf: nico ) laps equals: 0.
	self assert: (aGameState1 stateOf: claudio ) position equals: 1.
	self assert: (aGameState1 stateOf: claudio ) laps equals: 0.
	
	aGameState2 := aGameState1 withNewPlayerState: ( PlayerState positionedIn: 5 withLaps: 3 ) of: nico.
	
	self assert: (aGameState2 stateOf: nico ) position equals: 5.
	self assert: (aGameState2 stateOf: nico ) laps equals: 3.
	self assert: (aGameState2 stateOf: claudio ) position equals: 1.
	self assert: (aGameState2 stateOf: claudio ) laps equals: 0.