tests
testPlayingUntilTimeMachineEffect
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
					NoSquareEffect new.
					NoSquareEffect new.
					TimeMachineSquareEffect new.
					NoSquareEffect new})
		withNumberOfLaps: 2
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(2 1 3)))}.
	self assert: (game stateOf: nico) position == 1.
	self assert: (game stateOf: santi) position == 1.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) position == 3.
	self assert: (game stateOf: santi) position == 1.
	game giveTurnTo: santi.
	self assert: (game stateOf: nico) position == 3.
	self assert: (game stateOf: santi) position == 2.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) position == 3.
	self assert: (game stateOf: santi) position == 2