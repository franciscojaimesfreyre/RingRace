action
move: aPlayer in: aGame
	| state position laps |
	state := aGame stateOf: aPlayer.
	position := state position.
	laps := state laps.
	
	(position = aGame board length )
	ifTrue: [
		position := 1.
		laps := laps + 1.
	]
	ifFalse: [ 
		position := position + 1.
	].
	
	aGame at: aPlayer put: ( BoardPlayerState positionedIn: position withLaps: laps ).