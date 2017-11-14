tests
testWhenChangingGameStateItPreservesTheHistoryAndHasTheNewState
	|nico claudio aGameStateContext nicoState newGameState|
	
	nico := Player named: 'Nico'.
	claudio := Player named: 'Claudio'.
	
	aGameStateContext := GameStateContext withPlayers: { nico. claudio } in: (self board) andWhenStateIsUpdatedDo: [].
	
	nicoState := ( aGameStateContext currentState stateOf: nico ).
	newGameState := aGameStateContext currentState withNewPlayerState: ( nicoState withNewPositionInGame: ( nicoState positionInGame positionedInSquare: 3) ) of: nico.
	aGameStateContext newState: newGameState.
	
	self assert: ( aGameStateContext currentState ) equals: newGameState.