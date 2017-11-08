action
handleSquareEffectsWithProportion
	| hundredSquareEffectsWithProportion index|
	hundredSquareEffectsWithProportion := OrderedCollection new.
	index := 1.
	probabilities do: [ :probability | probability timesRepeat: [ hundredSquareEffectsWithProportion add: (effects at: index ) ]. 
							index := index + 1.].
	^ hundredSquareEffectsWithProportion