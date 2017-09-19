action
throwDice
	|numberOfMovements|
	
	numberOfMovements := 0.
	dices do: [ :eachDice | numberOfMovements := numberOfMovements + (eachDice throw) ].
	
	game move: player forward: numberOfMovements.