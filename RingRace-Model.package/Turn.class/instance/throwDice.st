action
throwDice
	| numberOfMovements |
	numberOfMovements := dices sumNumbers: [ :eachDice | eachDice throw ].
	game move: player squares: numberOfMovements.
	(game board squareAt: (game stateOf: player) position) effect applyTo: player in: game.