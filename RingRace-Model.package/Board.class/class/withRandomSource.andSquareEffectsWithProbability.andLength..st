instantation
withRandomSource: randomSource andSquareEffectsWithProbability: effectToProbability andLength: aLength
	| hundredSquareEffectsWithProportion squareEffects |
	hundredSquareEffectsWithProportion := self
		handleSquareEffectsWithProportion: effectToProbability.
	squareEffects := (1 to: aLength)
		collect: [ hundredSquareEffectsWithProportion at: (randomSource nextInt: 100) ].
	^ self withSquareEffects: squareEffects