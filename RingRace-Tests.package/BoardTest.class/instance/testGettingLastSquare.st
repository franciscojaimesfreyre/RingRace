tests
testGettingLastSquare
	| board lastSquare |
	board := Board lengthed: 30.
	lastSquare := board lastSquare.
	self assert: lastSquare equals: (board squareAt: board length)