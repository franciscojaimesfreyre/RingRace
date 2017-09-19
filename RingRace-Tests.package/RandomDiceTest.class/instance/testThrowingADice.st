tests
testThrowingADice
	|dice numberOfFaces|
	numberOfFaces := 6.
	dice := RandomDice withFaces: numberOfFaces.
	
	self assert: (dice throw between: 1 and: numberOfFaces) equals: true.