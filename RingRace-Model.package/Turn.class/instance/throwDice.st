action
throwDice
	| numberOfMovements |
	numberOfMovements := dices sumNumbers: [ :eachDice | eachDice throw ].
	game move: player forward: numberOfMovements