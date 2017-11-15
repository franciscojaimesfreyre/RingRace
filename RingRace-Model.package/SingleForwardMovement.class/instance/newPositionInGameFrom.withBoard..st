action
newPositionInGameFrom: aPositionInGame withBoard: aBoard
	^aPositionInGame squareNumber == ( aBoard length ) 
		ifTrue: [ PositionInGame positionedInSquare: 1 withLaps: ( aPositionInGame laps + 1 ) ]
		ifFalse: [ PositionInGame positionedInSquare: ( aPositionInGame squareNumber + 1 ) withLaps: ( aPositionInGame laps ) ]
