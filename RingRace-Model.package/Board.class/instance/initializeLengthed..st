initialization
initializeLengthed: aLength
	squares := OrderedCollection new.
	1 to: aLength do: [ :i | squares addLast: (Square positionedIn: i) ]