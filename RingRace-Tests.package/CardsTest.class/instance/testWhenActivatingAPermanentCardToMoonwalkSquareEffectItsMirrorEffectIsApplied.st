tests
testWhenActivatingAPermanentCardToMoonwalkSquareEffectItsMirrorEffectIsApplied
| game nico santi mirrorCard squareEffects |
	
	squareEffects := {NoSquareEffect new.
	NoSquareEffect new.
	NoSquareEffect new.
	NoSquareEffect new.
	MoonwalkSquareEffect newWithSquaresToMove: 2.
	NoSquareEffect new}.

	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	game := Game
		withPlayers: {santi. nico}
		withBoard: (Board withSquareEffects: squareEffects )
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(2 4 1)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	mirrorCard := PermanentCard withEffect: (MirrorEffect forSquareAtPosition: 5).
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game giveTurnTo: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	nico give: mirrorCard.
	nico activate: mirrorCard in: game.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game giveTurnTo: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 4.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.