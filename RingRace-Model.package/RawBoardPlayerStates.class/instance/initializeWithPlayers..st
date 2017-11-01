initialization
initializeWithPlayers: somePlayers.
	playerStateByPlayer := Dictionary newFromPairs: ( somePlayers collect: [ :eachPlayer | BoardPlayerState positionedIn: 1 withLaps: 0 ] )