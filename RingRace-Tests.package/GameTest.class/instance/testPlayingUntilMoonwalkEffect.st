tests
testPlayingUntilMoonwalkEffect
	| game player1 player2 players |
	player1 := Player named: 'Nico'.
	player2 := Player named: 'Santi'.
	players := {player1.
	player2}.
	game := Game
		withPlayers: players
		withBoard:
			(Board
				withSquareEffects:
					{NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					MoonwalkSquareEffect newWithN: 2.
					NoSquareEffect new})
		withNumberOfLaps: 2
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 2)))}.
	self assert: (game stateOf: player1) position == 1.
	self assert: (game stateOf: player2) position == 1.
	game giveTurnTo: player1.
	self assert: (game stateOf: player1) position == 2.
	self assert: (game stateOf: player2) position == 1.
	game giveTurnTo: player2.
	self assert: (game stateOf: player1) position == 2.
	self assert: (game stateOf: player2) position == 3.
	game giveTurnTo: player1.
	self assert: (game stateOf: player1) position == 4.
	self assert: (game stateOf: player2) position == 1