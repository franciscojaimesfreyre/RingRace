tests
testWhenGettingEffectsCollectionIsReturned
	| board squareEffects effects |
	squareEffects := {NoSquareEffect new.
	AtomicBombSquareEffect new.
	WormHoleSquareEffect new.
	SpeedUpSquareEffect new.
	MoonwalkSquareEffect new.
	TimeMachineSquareEffect new}.
	board := Board withSquareEffects: squareEffects.
	effects := board squaresEffects.
	self assert: effects equals: squareEffects .