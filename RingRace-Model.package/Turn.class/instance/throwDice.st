action
throwDice
	| tmp1 |
	tmp1 := dices sumNumbers: [ :arg1 | arg1 throw ].
	game move: player forward: tmp1.
	(game board squareAt: (game stateOf: player) position) effect
		applyTo: player
		in: game