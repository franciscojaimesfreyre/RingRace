action
newPositionInGameFrom: aPositionInGame withBoard: aBoard
	^secondMovement newPositionInGameFrom: (firstMovement newPositionInGameFrom: aPositionInGame withBoard: aBoard) withBoard: aBoard.