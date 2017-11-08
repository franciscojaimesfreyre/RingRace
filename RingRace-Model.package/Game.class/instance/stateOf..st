accessing
stateOf: aPlayer
	^playerStates at: aPlayer ifAbsentPut: ( PlayerStateInBoard positionedIn: 1 withLaps: 0).