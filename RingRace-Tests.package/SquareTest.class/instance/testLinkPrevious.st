tests
testLinkPrevious
	|square1 square2|
	
	square1 := Square create.
	square2 := Square create.
	
	square1 linkPrevious: square2.
	
	self assert: (square1 previous) equals: square2.