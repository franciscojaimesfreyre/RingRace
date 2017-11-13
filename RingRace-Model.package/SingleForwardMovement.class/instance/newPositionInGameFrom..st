action
newPositionInGameFrom: aPositionInGame
	^aPositionInGame = board length
		ifTrue: [ PositionInGame positionedInSquare: 1 withLaps: ( aPositionInGame laps + 1 ) ]
		ifFalse: [ PositionInGame positionedInSquare: ( aPositionInGame positionInBoard + 1 ) withLaps: aPositionInGame laps ]
