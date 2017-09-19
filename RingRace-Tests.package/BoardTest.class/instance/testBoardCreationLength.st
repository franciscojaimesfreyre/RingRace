tests
testBoardCreationLength
	|board|
	board := Board lengthed: 30.
	self assert:  ( board length ) equals: 30.