tests
testPlayingUntilAtomicBombEffect
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
					AtomicBombSquareEffect new.
					NoSquareEffect new})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 1 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	self assert: (game stateOf: player1) positionInGame positionInBoard == 1.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 1.
	game giveTurnTo: player1.
	self assert: (game stateOf: player1) positionInGame positionInBoard == 2.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 1.
	game giveTurnTo: player2.
	self assert: (game stateOf: player1) positionInGame positionInBoard == 2.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 2.
	game giveTurnTo: player1.
	self assert: (game stateOf: player1) positionInGame positionInBoard == 1.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 1