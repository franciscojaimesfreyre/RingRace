tests
testPlayingUntilMoonwalkEffect
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
					NoSquareEffect new.
					NoSquareEffect new.
					(MoonwalkSquareEffect newWithSquaresToMove: 2).
					NoSquareEffect new})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	self assert: (game stateOf: nico) position == 1.
	self assert: (game stateOf: santi) position == 1.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) position == 2.
	self assert: (game stateOf: santi) position == 1.
	game giveTurnTo: santi.
	self assert: (game stateOf: nico) position == 2.
	self assert: (game stateOf: santi) position == 3.
	game giveTurnTo: nico.
	"Nico falls in position 4 which has a MoonwalkEffect, so Santi moves back 2 squares as all the other players if there were any"
	self assert: (game stateOf: nico) position == 4.
	self assert: (game stateOf: santi) position == 1