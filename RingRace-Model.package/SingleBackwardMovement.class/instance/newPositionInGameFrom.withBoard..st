action
newPositionInGameFrom: aPositionInGame withBoard: aBoard
	^aPositionInGame positionInBoard == 1
		ifTrue: [ PositionInGame positionedInSquare: ( aBoard length ) withLaps: (aPositionInGame laps - 1) ]
		ifFalse: [ PositionInGame positionedInSquare: ( aPositionInGame positionInBoard - 1 ) withLaps: ( aPositionInGame laps ) ]. 