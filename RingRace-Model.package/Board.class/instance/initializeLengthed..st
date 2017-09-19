initialization
initializeLengthed: aLength
	|newLastSquare|
	length := aLength.
	playerPositions := Dictionary new.
	
	firstSquare := Square create.
	lastSquare := firstSquare.
	
	2 to: aLength do: [:i |
		newLastSquare := Square create.
		lastSquare linkNext: newLastSquare.
		newLastSquare linkPrevious: lastSquare.
		lastSquare := newLastSquare.
	].

	lastSquare linkNext: firstSquare.
	firstSquare linkPrevious: lastSquare.