action
newStateFrom: aState
	^aState withNewPositionInGame: ( aState positionInBoard = 1
		ifTrue: [ ( aState positionedInSquare: ( gameStateContext board length ) ) withLaps: (aState laps - 1) ]
		ifFalse: [ aState positionedInSquare: (aState positionInBoard) - 1 ] ). 