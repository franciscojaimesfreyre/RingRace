instance initialization
initializeWithSquareEffects: arg1
	| tmp2 |
	squares := OrderedCollection new.
	tmp2 := 1.
	arg1
		do: [ :arg2 | 
			squares addLast: (Square positionedIn: tmp2 withEffect: arg2).
			tmp2 := tmp2 + 1 ]