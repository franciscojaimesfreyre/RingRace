action
execute
	| state position laps |
	state := game stateOf: player.
	position := state position.
	laps := state laps.
	position = 1
		ifTrue: [ position := game board length.
			laps := laps - 1 ]
		ifFalse: [ position := position - 1 ].
	game at: player put: (PlayerStateInBoard positionedIn: position withLaps: laps)