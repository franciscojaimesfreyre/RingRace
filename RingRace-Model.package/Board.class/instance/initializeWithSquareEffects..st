instance initialization
initializeWithSquareEffects: someSquareEffects
	squares := someSquareEffects
		collect: [ :eachSquareEffect | 
			Square withEffect: eachSquareEffect]