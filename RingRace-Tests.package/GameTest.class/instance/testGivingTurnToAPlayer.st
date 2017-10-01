tests
testGivingTurnToAPlayer
	| game player turn dices square |
	player := Player named: 'Nico'.
	dices := {(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4)))}.
	game := Game
		withPlayers: {player}
		withBoard: ( Board withSquareEffects: ( OrderedCollection new: 30 withAll: ( NoSquareEffect new ) ) )
		withNumberOfLaps: 3
		withDices: dices.
	self assert: (game stateOf: player) position equals: 1.
	turn := Turn of: game for: player withDices: dices.
	player play: turn.
	self assert: (game stateOf: player) position equals: 2.
	player play: turn.
	self assert: (game stateOf: player) position equals: 4.
	player play: turn.
	self assert: (game stateOf: player) position equals: 7.
	player play: turn.
	self assert: (game stateOf: player) position equals: 11