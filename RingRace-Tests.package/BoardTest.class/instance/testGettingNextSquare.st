tests
testGettingNextSquare
	| board firstSquare secondSquare thirdSquare |
	board := Board lengthed: 3.
	firstSquare := board firstSquare.
	secondSquare := firstSquare next.
	thirdSquare := secondSquare next.
	self deny: firstSquare == secondSquare.
	self deny: firstSquare == thirdSquare.
	self deny: secondSquare == thirdSquare