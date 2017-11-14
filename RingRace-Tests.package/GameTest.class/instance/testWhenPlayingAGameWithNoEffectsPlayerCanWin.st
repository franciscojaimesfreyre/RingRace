tests
testWhenPlayingAGameWithNoEffectsPlayerCanWin
	| game player1 player2 players |
	player1 := Player named: 'Nico'.
	player2 := Player named: 'Santi'.
	players := {player1.
	player2}.
	game := Game
		withPlayers: players
		withBoard:
			(Board
				withSquareEffects: (OrderedCollection new: 10 withAll: NoSquareEffect new))
		withDices:
			{(Dice withNumbersFrom: (ReadStream on: #(3 2 5 1 2 3 5))).
			(Dice withNumbersFrom: (ReadStream on: #(2 1 3 4 3 4 3)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	self assert: (game stateOf: player1) positionInGame positionInBoard == 1.
	self assert: (game stateOf: player1) positionInGame laps equals: 0.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 1.
	self assert: (game stateOf: player2) positionInGame laps equals: 0.
	game giveTurnTo: player1.
	self assert: (game stateOf: player1) positionInGame positionInBoard == 6.
	self assert: (game stateOf: player1) positionInGame laps equals: 0.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 1.
	self assert: (game stateOf: player2) positionInGame laps equals: 0.
	game giveTurnTo: player2.
	self assert: (game stateOf: player1) positionInGame positionInBoard == 6.
	self assert: (game stateOf: player1) positionInGame laps equals: 0.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 4.
	self assert: (game stateOf: player2) positionInGame laps equals: 0.
	game giveTurnTo: player1.
	self assert: (game stateOf: player1) positionInGame positionInBoard == 4.
	self assert: (game stateOf: player1) positionInGame laps equals: 1.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 4.
	self assert: (game stateOf: player2) positionInGame laps equals: 0.
	game giveTurnTo: player2.
	self assert: (game stateOf: player1) positionInGame positionInBoard  == 4.
	self assert: (game stateOf: player1) positionInGame laps equals: 1.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 9.
	self assert: (game stateOf: player2) positionInGame laps equals: 0.
	game giveTurnTo: player1.
	self assert: (game stateOf: player1) positionInGame positionInBoard == 9.
	self assert: (game stateOf: player1) positionInGame laps equals: 1.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 9.
	self assert: (game stateOf: player2) positionInGame laps equals: 0.
	game giveTurnTo: player2.
	self assert: (game stateOf: player1) positionInGame positionInBoard == 9.
	self assert: (game stateOf: player1) positionInGame laps equals: 1.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 6.
	self assert: (game stateOf: player2) positionInGame laps equals: 1.
	game giveTurnTo: player1.
	self assert: (game stateOf: player1) positionInGame laps equals: 2.
	self assert: (game stateOf: player2) positionInGame positionInBoard == 6.
	self assert: (game stateOf: player2) positionInGame laps equals: 1.
	self assert: game winner == player1