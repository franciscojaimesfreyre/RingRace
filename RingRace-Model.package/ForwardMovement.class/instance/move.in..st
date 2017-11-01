action
move: arg1 in: arg2
	| tmp1 tmp2 tmp3 |
	tmp1 := arg2 stateOf: arg1.
	tmp2 := tmp1 position.
	tmp3 := tmp1 laps.
	tmp2 = arg2 board length
		ifTrue: [ tmp2 := 1.
			tmp3 := tmp3 + 1 ]
		ifFalse: [ tmp2 := tmp2 + 1 ].
	arg2 at: arg1 put: (PlayerState positionedIn: tmp2 withLaps: tmp3)