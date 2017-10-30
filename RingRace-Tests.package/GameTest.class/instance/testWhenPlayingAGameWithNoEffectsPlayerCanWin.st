tests
testWhenPlayingAGameWithNoEffectsPlayerCanWin
	| game player1 player2 players |
	player1 := Player named: 'Nico'.
	player2 := Player named: 'Santi'.
	players := {player1.
	player2}.
	game := Game
		withPlayers: players
		withBoard: ( Board withSquareEffects: ( OrderedCollection new: 10 withAll: ( NoSquareEffect new ) ) )
		withNumberOfLaps: 2
		withDices:
			{(Dice withNumbersFrom: (ReadStream on: #(3 2 5 1 2 3 5))).
			(Dice withNumbersFrom: (ReadStream on: #(2 1 3 4 3 4 3)))}.
	self assert: (game stateOf: player1) position == 1.
	self assert: (game stateOf: player1) laps equals: 0.
	self assert: (game stateOf: player2) position == 1.
	self assert: (game stateOf: player2) laps equals: 0.
	game giveTurnTo: player1.
	self assert: (game stateOf: player1) position == 6.
	self assert: (game stateOf: player1) laps equals: 0.
	self assert: (game stateOf: player2) position == 1.
	self assert: (game stateOf: player2) laps equals: 0.
	game giveTurnTo: player2.
	self assert: (game stateOf: player1) position == 6.
	self assert: (game stateOf: player1) laps equals: 0.
	self assert: (game stateOf: player2) position == 4.
	self assert: (game stateOf: player2) laps equals: 0.
	game giveTurnTo: player1.
	self
		assert:
			(game stateOf: player1) position
				== 4.
	self assert: (game stateOf: player1) laps equals: 1.
	self assert: (game stateOf: player2) position == 4.
	self assert: (game stateOf: player2) laps equals: 0.
	game giveTurnTo: player2.
	self
		assert:
			(game stateOf: player1) position
				== 4.
	self assert: (game stateOf: player1) laps equals: 1.
	self
		assert: (game stateOf: player2) position == 9.
	self assert: (game stateOf: player2) laps equals: 0.
	game giveTurnTo: player1.
	self
		assert:
			(game stateOf: player1) position
				==
					9.
	self assert: (game stateOf: player1) laps equals: 1.
	self
		assert: (game stateOf: player2) position == 9.
	self assert: (game stateOf: player2) laps equals: 0.
	game giveTurnTo: player2.
	self
		assert:
			(game stateOf: player1) position
				==
					9.
	self assert: (game stateOf: player1) laps equals: 1.
	self
		assert:
			(game stateOf: player2) position
				== 6.
	self assert: (game stateOf: player2) laps equals: 1.
	game giveTurnTo: player1.
	self
		assert:
			(game stateOf: player1) position
				==
					1.
	self assert: (game stateOf: player1) laps equals: 2.
	self
		assert:
			(game stateOf: player2) position
				== 6.
	self assert: (game stateOf: player2) laps equals: 1.
	self assert: game winner == player1