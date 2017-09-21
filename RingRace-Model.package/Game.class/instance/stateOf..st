accessing
stateOf: aPlayer
	^ playerStates
		at: aPlayer
		ifAbsentPut: [ PlayerState positionedIn: 1 withLaps: 0 ]