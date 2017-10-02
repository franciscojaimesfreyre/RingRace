accessing
stateOf: aPlayer
	| playerStatesStack |
	playerStatesStack := Stack new.
	playerStatesStack push: (PlayerState positionedIn: 1 withLaps: 0).
	^ (playerStates at: aPlayer ifAbsentPut: [ playerStatesStack ]) top