tests
testWhenActivatingAPermanentCardToAtomicBombEffectItsMirrorEffectIsApplied
| game nico santi mirrorCard squareEffects |
	
	squareEffects := {NoSquareEffect new.
	NoSquareEffect new.
	NoSquareEffect new.
	NoSquareEffect new.
	AtomicBombSquareEffect new.
	NoSquareEffect new}.

	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	game := Game
		withPlayers: {nico. santi}
		withBoard: (Board withSquareEffects: squareEffects )
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(4 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	mirrorCard := PermanentCard withEffect: (MirrorEffect forSquareAtPosition: 5).
	nico give: mirrorCard.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	nico activate: mirrorCard in: game.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 5.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game giveTurnTo: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 5.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.