action
execute
		| state position laps |
	state := game stateOf: player.
	position := state position.
	laps := state laps.
	position = game board length
		ifTrue: [ position := 1.
			laps := laps + 1 ]
		ifFalse: [ position := position + 1 ].
	game at: player put: (PlayerState positionedIn: position withLaps: laps)