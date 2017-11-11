instantiation
withPlayers: somePlayers
	| playerStates |
	playerStates := Dictionary new.
	somePlayers do: [ :eachPlayer | playerStates at: eachPlayer put: ( PlayerState positionedIn: 1 withLaps: 0 ) ].
	
	^self new initializeWithPlayerStates: playerStates withCurrentTurnOf: ( somePlayers first ).