tests
obtainSquaresQuantityPerEffectOf: aBoard
	| squaresPerEffect |
	squaresPerEffect := Dictionary new.
	1 to: aBoard length do: [ :squareIndex | 
		| squareEffect |
		squareEffect := (aBoard squareAt: squareIndex) effect.
		squaresPerEffect at: squareIndex put: (squaresPerEffect at: squareEffect ifAbsent: 0) + 1 ].
	
	^squaresPerEffect.