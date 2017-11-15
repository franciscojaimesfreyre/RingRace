tests
testWhenActivatingAPermanentCardItsSobrecargaEffectIsApplied
	| game nico santi card |
	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	game := Game
		withPlayers:
			{nico.
			santi}
		withBoard: (Board withSquareEffects: (OrderedCollection new: 10 withAll: NoSquareEffect new))
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(3 2 1 2 2 2 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	card := PermanentCard withEffect: SobrecargaEffect new.
	nico give: card.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	nico activate: card in: game.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 2.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game giveTurnTo: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 2.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.