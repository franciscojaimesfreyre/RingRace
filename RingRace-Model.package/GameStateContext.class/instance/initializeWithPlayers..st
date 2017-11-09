instance initialization
initializeWithPlayers: somePlayers
	gameStates := OrderedCollection new.
	gameStates add: ( GameState withPlayers: somePlayers ).