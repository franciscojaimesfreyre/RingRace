tests
testCreatingNewGameStateWithPlayerOfCurrentTurnChange
	|aGameState1 aGameState2 nico claudio board|
	board := Board withSquareEffects: (OrderedCollection new: 10 withAll: NoSquareEffect new).
	nico := Player named: 'Nico'.
	claudio := Player named: 'claudio'.
	aGameState1 := GameState withPlayers: { nico. claudio } andABoard: board.
	
	self assert: (aGameState1 stateOf: nico ) positionInGame squareNumber equals: 1.
	self assert: (aGameState1 stateOf: nico ) positionInGame laps equals: 0.
	self assert: (aGameState1 stateOf: claudio ) positionInGame squareNumber equals: 1.
	self assert: (aGameState1 stateOf: claudio ) positionInGame laps equals: 0.
	
	self assert: (aGameState1 playerInTurn ) equals: nico.
	
	aGameState2 := aGameState1 withNewTurnOf: claudio.
	
	self assert: (aGameState2 stateOf: nico ) positionInGame squareNumber equals: 1.
	self assert: (aGameState2 stateOf: nico ) positionInGame laps equals: 0.
	self assert: (aGameState2 stateOf: claudio ) positionInGame squareNumber equals: 1.
	self assert: (aGameState2 stateOf: claudio ) positionInGame laps equals: 0.
	
	self assert: (aGameState2 playerInTurn ) equals: claudio.