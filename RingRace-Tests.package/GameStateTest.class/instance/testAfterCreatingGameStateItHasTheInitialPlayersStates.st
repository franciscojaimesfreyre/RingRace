tests
testAfterCreatingGameStateItHasTheInitialPlayersStates
	|aGameStateInBoard nico claudio |
	nico := Player named: 'Nico'.
	claudio := Player named: 'claudio'.
	aGameStateInBoard := GameState withPlayers: { nico. claudio }.
	
	self assert: (aGameStateInBoard stateOf: nico ) position equals: 1.
	self assert: (aGameStateInBoard stateOf: nico ) laps equals: 0.
	self assert: (aGameStateInBoard stateOf: claudio ) position equals: 1.
	self assert: (aGameStateInBoard stateOf: claudio ) laps equals: 0.