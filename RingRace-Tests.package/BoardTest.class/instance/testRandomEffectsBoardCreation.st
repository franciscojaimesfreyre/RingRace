tests
testRandomEffectsBoardCreation
	| random squaresProportionPerSquareEffect squareEffects boardCreations squaresProportionPerCreationPerSquareEffect totalQuadraticErrorPerEffect totalAverageQuadraticError |
	random := Random new.
	squaresProportionPerSquareEffect := Dictionary
		newFromPairs:
			{NoSquareEffect new.
			0.4.
			AtomicBombSquareEffect new.
			0.02.
			WormHoleSquareEffect new.
			0.15.
			SpeedUpSquareEffect new.
			0.15.
			MoonwalkSquareEffect new.
			0.05.
			TimeMachineSquareEffect new.
			0.23}.
	squareEffects := squaresProportionPerSquareEffect keys.
	boardCreations := 10000.
	squaresProportionPerCreationPerSquareEffect := Dictionary new.
	totalQuadraticErrorPerEffect := Dictionary new.
	1 to: boardCreations do: [ :boardCreationIteration | 
		| eachBoard squaresPerEffect |
		eachBoard := Board
			withRandomSource: random
			andSquareEffects: squaresProportionPerSquareEffect
			andLength: 20.
		squaresPerEffect := self obtainSquaresQuantityPerEffectOf: eachBoard.
		squareEffects
			do: [ :eachEffect | 
				| creationProportion expectedProportion boardEffectQuadraticError |
				creationProportion := (squaresPerEffect at: eachEffect ifAbsent: 0)
					/ eachBoard length.
				expectedProportion := squaresProportionPerSquareEffect at: eachEffect.
				boardEffectQuadraticError := (creationProportion - expectedProportion) squared.
				totalQuadraticErrorPerEffect
					at: eachEffect
					put: (totalQuadraticErrorPerEffect at: eachEffect ifAbsentPut: 0) + boardEffectQuadraticError ] ].
	totalAverageQuadraticError := 0.
	squareEffects
		do: [ :eachEffect | 
			| averageQuadraticErrorOfEachEffectProportion |
			averageQuadraticErrorOfEachEffectProportion := (totalQuadraticErrorPerEffect
				at: eachEffect) / boardCreations.
			totalAverageQuadraticError := totalAverageQuadraticError
				+ (averageQuadraticErrorOfEachEffectProportion / squareEffects size) ].
	self assert: totalAverageQuadraticError sqrt < 0.3