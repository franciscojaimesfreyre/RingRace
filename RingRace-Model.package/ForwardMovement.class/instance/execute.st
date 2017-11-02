action
execute
	game
		at: player
		put: (self newState: (game stateOf: player))
			