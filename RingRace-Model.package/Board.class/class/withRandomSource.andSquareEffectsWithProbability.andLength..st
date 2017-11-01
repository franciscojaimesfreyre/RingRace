instantation
withRandomSource: arg1 andSquareEffectsWithProbability: arg2 andLength: arg3
	| tmp1 tmp2 |
	tmp2 := OrderedCollection new: arg3.
	tmp1 := OrderedCollection new: 100.
	arg2 keys
		do: [ :arg4 | (1 to: (arg2 at: arg4) * 100) do: [ tmp1 add: arg4 ] ].
	(1 to: arg3) do: [ tmp2 add: (tmp1 at: (arg1 nextInt: 100)) ].
	^ self withSquareEffects: tmp2