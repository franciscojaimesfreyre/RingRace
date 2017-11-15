tests
testWhenGivingTurnToAPlayerItChangesState
	| gameStateContext nico turn dices |
	nico := Player named: 'Nico'.
	dices := {(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4)))}.
	gameStateContext := GameStateContext 
		withPlayers: {nico}
		in:
			(Board
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		andWhenStateIsUpdatedDo: [].
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 1.
	turn := Turn of: gameStateContext for: nico withDices: dices.
	nico play: turn.
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 2.
	nico play: turn.
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 4.
	nico play: turn.
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 7.
	nico play: turn.
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 11