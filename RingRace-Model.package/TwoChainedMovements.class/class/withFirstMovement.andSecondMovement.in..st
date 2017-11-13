instantiation
withFirstMovement: theFirstMovement andSecondMovement: theSecondMovement in: aBoard
	^(self new initializeInBoard: aBoard ) initializeWithFirstMovement: theFirstMovement andSecondMovement: theSecondMovement.