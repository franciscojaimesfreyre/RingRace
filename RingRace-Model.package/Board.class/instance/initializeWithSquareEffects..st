instance initialization
initializeWithSquareEffects: someSquareEffects
	|index|
	squares := OrderedCollection new.	
	index := 1.	 
	someSquareEffects do: [ :eachSquareEffect |
		squares addLast: (Square positionedIn: index withEffect: eachSquareEffect ).
		index := index + 1.
	].