action
newPositionInGameFrom: aPositionInGame withBoard: aBoard
	^aPositionInGame positionInBoard == ( aBoard length ) 
		ifTrue: [ PositionInGame positionedInSquare: 1 withLaps: ( aPositionInGame laps + 1 ) ]
		ifFalse: [ PositionInGame positionedInSquare: ( aPositionInGame positionInBoard + 1 ) withLaps: ( aPositionInGame laps ) ]
