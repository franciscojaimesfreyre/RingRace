action
throwDice
	| numberOfMovements effect |
	numberOfMovements := dices sumNumbers: [ :eachDice | eachDice throw ].
	(MovementInGame advancingWithSquares: numberOfMovements) move: player in: gameStateContext.
	effect := (gameStateContext board squareAt: (gameStateContext currentState stateOf: player) positionInGame squareNumber) effect.
	effect
		applyTo: player
		in: gameStateContext.
	self putLastSquareEffect: effect.