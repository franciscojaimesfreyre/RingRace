instantation
withRandomSource: randomSource andSquareEffectsWithProbability: someSquareEffectsWithProbability andLength: aLength
	| hundredSquareEffectsWithProportion squareEffects |
	squareEffects := OrderedCollection new: aLength.
	hundredSquareEffectsWithProportion := OrderedCollection new: 100.
	someSquareEffectsWithProbability keys
		do: [ :eachKey | (1 to: (someSquareEffectsWithProbability at: eachKey) * 100) do: [ hundredSquareEffectsWithProportion add: eachKey ] ].
	(1 to: aLength) do: [ squareEffects add: (hundredSquareEffectsWithProportion at: (randomSource nextInt: 100)) ].
	^self withSquareEffects: squareEffects.