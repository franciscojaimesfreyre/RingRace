tests
testWhenFallingIntoMoonwalkEffectInFirstTurnPlayersGetNegativeLaps
	| game nico santi |
	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	game := Game
		withPlayers:
			{nico.
			santi}
		withBoard:
			(Board
				withSquareEffects:
					{NoSquareEffect new.
					(MoonwalkSquareEffect newWithSquaresToMove: 2).
					NoSquareEffect new})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	self assert: (game stateOf: nico) positionInGame positionInBoard == 1.
	self assert: (game stateOf: santi) positionInGame positionInBoard == 1.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame positionInBoard == 2.
	self assert: (game stateOf: nico) positionInGame laps == 0.
	self assert: (game stateOf: santi) positionInGame positionInBoard == 2.
	self assert: (game stateOf: santi) positionInGame laps == -1