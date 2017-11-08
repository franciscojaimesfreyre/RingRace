initialization
initializeWithPlayers: somePlayers andBoard: aBoard withDices: someDices winningWhen: aWinningCondition
	players := OrderedCollection withAll: somePlayers.
	board := aBoard.
	playerStates := Dictionary new.
	savedPlayerStates := Dictionary new.
	winnerValidator := WinnerValidator checking: aWinningCondition.
	dices := someDices.
	currentPlayerIndex := 1.
	hasEnded := false