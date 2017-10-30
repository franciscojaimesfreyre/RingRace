tests
testWhenCreatingABoardItHasEffects
	| board squareEffects |
	squareEffects := {NoSquareEffect new.
	AtomicBombSquareEffect new.
	WormHoleSquareEffect new.
	SpeedUpSquareEffect new.
	MoonwalkSquareEffect new.
	TimeMachineSquareEffect new}.
	board := Board withSquareEffects: squareEffects.
	self assert: board length equals: squareEffects size.
	1 to: board length do: [ :i | self assert: (board squareAt: i) effect equals: (squareEffects at: i) ]