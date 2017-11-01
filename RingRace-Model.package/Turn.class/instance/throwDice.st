action
throwDice
	| numberOfMovements |
	numberOfMovements := dices sumNumbers: [ :eachDice | eachDice throw ].
	game move: player forward: numberOfMovements.
	(game board squareAt: (game stateOf: player) position) effect applyTo: player in: game.