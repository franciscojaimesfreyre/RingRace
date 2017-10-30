tests
testWhenFallingIntoTimeMachineEffectInFirstTurnPlayerStaysAtFirstSquare
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
					TimeMachineSquareEffect new.
					NoSquareEffect new})
		withNumberOfLaps: 2
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1)))}.
	self assert: (game stateOf: nico) position == 1.
	self assert: (game stateOf: santi) position == 1.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) position == 1.
	self assert: (game stateOf: nico) laps == 0.
	self assert: (game stateOf: santi) position == 1.
	self assert: (game stateOf: santi) laps == 0