action
newState: aState
	^ aState position = game board length
		ifTrue: [ PlayerState positionedIn: 1 withLaps: aState laps + 1 ]
		ifFalse: [ PlayerState positionedIn: aState position + 1 withLaps: aState laps ]