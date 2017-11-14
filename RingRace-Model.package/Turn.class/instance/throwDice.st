action
throwDice
	| numberOfMovements |
	numberOfMovements := dices sumNumbers: [ :eachDice | eachDice throw ].
	( MovementInGame advancingWithSquares: numberOfMovements ) move: player in: gameStateContext.
	(gameStateContext board squareAt: (gameStateContext currentState stateOf: player) positionInGame positionInBoard) effect applyTo: player in: gameStateContext.