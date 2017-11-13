instance initialization
initializeWithPlayers: somePlayers in: aBoard
	gameStates := OrderedCollection new.
	gameStates add: ( GameState withPlayers: somePlayers ).
	board := aBoard.