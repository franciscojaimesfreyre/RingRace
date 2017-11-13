action
newPositionInGameFrom: aPositionInGame
	^aPositionInGame positionInBoard = 1
		ifTrue: [ PositionInGame positionedInSquare: ( board length ) withLaps: (aPositionInGame laps - 1) ]
		ifFalse: [ PositionInGame positionedInSquare: ( aPositionInGame positionInBoard - 1 ) withLaps: ( aPositionInGame laps ) ]. 