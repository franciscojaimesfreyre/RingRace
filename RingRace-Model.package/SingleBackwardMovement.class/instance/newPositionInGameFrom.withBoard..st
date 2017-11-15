action
newPositionInGameFrom: aPositionInGame withBoard: aBoard
	^aPositionInGame squareNumber == 1
		ifTrue: [ PositionInGame positionedInSquare: ( aBoard length ) withLaps: (aPositionInGame laps - 1) ]
		ifFalse: [ PositionInGame positionedInSquare: ( aPositionInGame squareNumber - 1 ) withLaps: ( aPositionInGame laps ) ]. 