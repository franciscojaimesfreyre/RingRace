tests
testGettingNextSquare
	| board firstSquare secondSquare thirdSquare |
	board := Board lengthed: 3.
	firstSquare := board firstSquare.
	secondSquare := firstSquare next.
	thirdSquare := secondSquare next.
	
	self assert: ( firstSquare == secondSquare ) not.
	self assert: ( firstSquare == thirdSquare ) not.
	self assert: ( secondSquare == thirdSquare ) not.