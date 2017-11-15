tests
testWhenApplyingADeshacerCardItUndoesTheAtomicBombSquareEffect
	| game nico santi deshacerCard |
	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	game := Game
		withPlayers: {nico. santi}
		withBoard:
			(Board
				withSquareEffects:
					{NoSquareEffect new.
					NoSquareEffect new.
					AtomicBombSquareEffect new})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	deshacerCard := InstantaneousCard withEffect: DeshacerEffect new.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 2.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game giveTurnTo: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	nico give: deshacerCard.
	nico activate: deshacerCard in: game. 
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 2.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0