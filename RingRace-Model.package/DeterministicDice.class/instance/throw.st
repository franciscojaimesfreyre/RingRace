initialization
throw
	|result|
	
	result := numbers at: numberIndex.
	numberIndex := numberIndex + 1.
	
	^result.