private
handleSquareEffectsWithProportion: effectToProbability
	| hundredSquareEffectsWithProportion |
	hundredSquareEffectsWithProportion := OrderedCollection new.
	effectToProbability
		keysAndValuesDo: [ :effect :probability | 
			probability
				timesRepeat: [ hundredSquareEffectsWithProportion add: effect ] ].
	^ hundredSquareEffectsWithProportion