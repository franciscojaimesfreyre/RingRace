action
applyTo: arg1 in: arg2
	arg2 players
		do: [ :arg3 | arg2 at: arg3 put: (PlayerState positionedIn: 1 withLaps: 0) ]