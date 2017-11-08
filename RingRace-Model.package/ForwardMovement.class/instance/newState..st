action
newState: aState
	^ aState position = game board length
		ifTrue: [ PlayerStateInBoard positionedIn: 1 withLaps: aState laps + 1 ]
		ifFalse: [ PlayerStateInBoard positionedIn: aState position + 1 withLaps: aState laps ]
