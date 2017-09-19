tests
testLinkForward
	|square1 square2|
	
	square1 := Square create.
	square2 := Square create.
	
	square1 linkNext: square2.
	
	self assert: (square1 next) equals: square2.