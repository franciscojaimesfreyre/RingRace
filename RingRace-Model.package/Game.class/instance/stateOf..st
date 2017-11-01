accessing
stateOf: arg1
	^ playerStates
		at: arg1
		ifAbsentPut: (PlayerState positionedIn: 1 withLaps: 0)