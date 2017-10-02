initialization
initializeWithPlayers: somePlayers andBoard: aBoard withNumberOfLaps: aNumberOfLaps withDices: someDices
	players := OrderedCollection withAll: somePlayers.
	board := aBoard.
	playerStates := Dictionary new.
	savedPlayerStates := Dictionary new.
	dices := someDices.
	currentPlayerIndex := 1.
	numberOfLaps := aNumberOfLaps.
	hasEnded := false