instantation
withRandomSource: randomSource andSquareEffectsWithProbability: effectToProbability andLength: aLength
	| hundredSquareEffectsWithProportion squareEffects |
	hundredSquareEffectsWithProportion := effectToProbability 
		handleSquareEffectsWithProportion.
	squareEffects := (1 to: aLength)
		collect: [:foo | hundredSquareEffectsWithProportion at: ((randomSource next)*100) floor].
	^ self withSquareEffects: squareEffects