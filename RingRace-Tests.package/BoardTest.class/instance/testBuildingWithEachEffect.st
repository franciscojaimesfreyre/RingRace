tests
testBuildingWithEachEffect
	| tmp1 tmp2 tmp3 |
	tmp2 := {NoSquareEffect new.
	AtomicBombSquareEffect new.
	WormHoleSquareEffect new.
	SpeedUpSquareEffect new.
	MoonwalkSquareEffect new.
	TimeMachineSquareEffect new}.
	tmp1 := Board withSquareEffects: tmp2.
	self assert: tmp1 length equals: tmp2 size.
	tmp3 := tmp1 length.
	1 to: tmp3 do: [ :tmp4 | self assert: (tmp1 squareAt: tmp4) effect equals: (tmp2 at: tmp4) ]