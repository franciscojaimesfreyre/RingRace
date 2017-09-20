accessing
stateOf: aPlayer
	^ playerStates at: aPlayer ifAbsentPut: [ PlayerState positionedIn: board firstSquare withLaps: 0 ]