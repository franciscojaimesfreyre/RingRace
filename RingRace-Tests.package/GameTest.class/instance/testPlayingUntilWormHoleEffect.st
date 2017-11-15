tests
testPlayingUntilWormHoleEffect
	| game nico santi players |
	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	players := {nico.
	santi}.
	game := Game
		withPlayers: players
		withBoard:
			(Board
				withSquareEffects:
					{NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					WormHoleSquareEffect new})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 1 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	self assert: (game stateOf: nico) positionInGame squareNumber == 1.
	self assert: (game stateOf: santi) positionInGame squareNumber == 1.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber == 2.
	self assert: (game stateOf: santi) positionInGame squareNumber == 1.
	game giveTurnTo: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber == 2.
	self assert: (game stateOf: santi) positionInGame squareNumber == 2.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber == 4.
	self assert: (game stateOf: santi) positionInGame squareNumber == 2