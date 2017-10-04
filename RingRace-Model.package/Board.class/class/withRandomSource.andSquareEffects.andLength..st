instantation
withRandomSource: randomSource andSquareEffects: aSquaresProportionPerSquareEffect andLength: aLength
	| squareEffects |
	squareEffects := OrderedCollection new.
	1 to: aLength do: [ :squareIndex | 
		| pendingEffects foundEffect effectIntervalMaxRandomValue |
		effectIntervalMaxRandomValue := 0.
		pendingEffects := Stack new.
		pendingEffects addAll: aSquaresProportionPerSquareEffect keys.
		foundEffect := false.
		[ pendingEffects isEmpty or: foundEffect ]
			whileFalse: [
				|eachEffect|
				eachEffect := pendingEffects pop.
				
				effectIntervalMaxRandomValue := effectIntervalMaxRandomValue + (aSquaresProportionPerSquareEffect
					at: eachEffect).
				foundEffect := randomSource next < effectIntervalMaxRandomValue.
				foundEffect
					ifTrue: [ squareEffects add: eachEffect ] ] ].
	^ self withSquareEffects: squareEffects