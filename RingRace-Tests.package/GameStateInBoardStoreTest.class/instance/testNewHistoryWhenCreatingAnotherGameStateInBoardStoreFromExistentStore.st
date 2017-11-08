tests
testNewHistoryWhenCreatingAnotherGameStateInBoardStoreFromExistentStore
	|nico originalGameStateInBoardStore firstPlayerState secondPlayerState|
	
	nico := Player named: 'Nico'.
	
	originalGameStateInBoardStore := GameStateInBoardStore withPlayers: { nico }.
	firstPlayerState := PlayerStateInBoard positionedIn: 1 withLaps: 0.
	secondPlayerState := PlayerStateInBoard positionedIn: 2 withLaps: 1.
	
	originalGameStateInBoardStore at: nico putState: secondPlayerState.
	
	self assert: ( (GameStateInBoardStore withStateOf: originalGameStateInBoardStore) historyOf: nico ) equals: ( OrderedCollection with: secondPlayerState ).
	
	