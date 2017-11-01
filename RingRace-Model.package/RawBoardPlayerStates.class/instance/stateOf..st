accessing
stateOf: aPlayer
	^playerStateByPlayer at: aPlayer ifAbsentPut: ( BoardPlayerState positionedIn: 1 withLaps: 0).