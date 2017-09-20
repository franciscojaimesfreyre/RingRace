initialization
initializeWithPlayers: somePlayers andBoardSize: aBoardSize withNumberOfLaps: aNumberOfLaps withDices: someDices
	players := OrderedCollection withAll: somePlayers.
	board := Board lengthed: aBoardSize.
	playerStates := Dictionary new.
	dices := someDices.
	currentPlayerIndex := 1.
	numberOfLaps := aNumberOfLaps.
	hasEnded := false