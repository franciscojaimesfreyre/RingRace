tests
testPlayersStartFromBegin
	|nico claudio aGameStateInBoardStore firstPlayerState|
	
	nico := Player named: 'Nico'.
	claudio := Player named: 'Claudio'.
	
	aGameStateInBoardStore := GameStateInBoardStore withPlayers: { nico. claudio }.
	firstPlayerState := PlayerStateInBoard positionedIn: 1 withLaps: 0.
	
	self assert: (aGameStateInBoardStore stateOf: nico) equals: firstPlayerState.
	self assert: (aGameStateInBoardStore stateOf: claudio) equals: firstPlayerState.