instance initialization
initializeWithPlayers: somePlayers in: aBoard andWhenStateIsUpdatedDo: aBlock
	gameStates := OrderedCollection new.
	gameStates add: ( GameState withPlayers: somePlayers ).
	board := aBoard.
	notifyStateUpdateBlock := aBlock.