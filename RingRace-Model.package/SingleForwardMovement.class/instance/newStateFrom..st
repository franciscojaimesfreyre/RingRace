action
newStateFrom: aState
	^ aState positionInBoard = gameStateContext board length
		ifTrue: [ (aState positionedInSquare: 1 ) withLaps: aState laps + 1 ]
		ifFalse: [ ( aState positionedInSquare: aState positionInBoard + 1 ) withLaps: aState laps ]
