initialization
initializeWithPlayers: arg1 andBoard: arg2 withNumberOfLaps: arg3 withDices: arg4
	players := OrderedCollection withAll: arg1.
	board := arg2.
	playerStates := Dictionary new.
	savedPlayerStates := Dictionary new.
	dices := arg4.
	currentPlayerIndex := 1.
	numberOfLaps := arg3.
	hasEnded := false