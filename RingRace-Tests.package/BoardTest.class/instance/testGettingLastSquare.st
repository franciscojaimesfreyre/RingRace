tests
testGettingLastSquare
	| board player firstSquare lastSquare |
	board := Board lengthed: 30.
	firstSquare := board firstSquare.
	lastSquare := board lastSquare.
	self assert: ( lastSquare next ) equals: firstSquare.