tests
testAfterPuttingPlayerStateItHasFirstStateAndTheSavedStateOnTheHistory
	|nico aGameStateInBoardStore firstPlayerState secondPlayerState|
	
	nico := Player named: 'Nico'.
	
	aGameStateInBoardStore := GameStateInBoardStore withPlayers: nico.
	
	firstPlayerState := PlayerStateInBoard positionedIn: 1 withLaps: 0.
	secondPlayerState := PlayerStateInBoard positionedIn: 4 withLaps: 2.
	
	self assert: (aGameStateInBoardStore historyOf: nico) equals: ( OrderedCollection withAll: { firstPlayerState } ).
	
	aGameStateInBoardStore at: nico putState: secondPlayerState.
	
	self assert: (aGameStateInBoardStore historyOf: nico) equals: ( OrderedCollection withAll: { firstPlayerState. secondPlayerState } ).