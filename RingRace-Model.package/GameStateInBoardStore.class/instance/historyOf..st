accessing
historyOf: aPlayer
	^playerStatesHistoryPerPlayer at: aPlayer ifAbsentPut: ( OrderedCollection with: ( PlayerStateInBoard positionedIn: 1 withLaps: 0) ).