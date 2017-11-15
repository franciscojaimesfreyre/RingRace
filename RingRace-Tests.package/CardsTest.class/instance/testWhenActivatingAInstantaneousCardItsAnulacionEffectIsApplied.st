tests
testWhenActivatingAInstantaneousCardItsAnulacionEffectIsApplied
	| game nico santi velocidadCard anulacionCard |
	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	game := Game
		withPlayers:
			{nico.
			santi}
		withBoard: (Board withSquareEffects: (OrderedCollection new: 10 withAll: NoSquareEffect new))
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(2 2 2 2 2 2 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	velocidadCard := PermanentCard withEffect: VelocidadEffect new.
	anulacionCard := InstantaneousCard withEffect: AnulacionEffect new.
	nico give: velocidadCard.
	santi give: anulacionCard .
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	nico activate: velocidadCard in: game.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 4.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game giveTurnTo: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 4.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	santi activate: anulacionCard  in: game. 
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 7.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0