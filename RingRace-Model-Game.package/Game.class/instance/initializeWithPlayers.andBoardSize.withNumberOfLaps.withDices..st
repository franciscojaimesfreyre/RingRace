initialization
initializeWithPlayers: somePlayers andBoardSize: aBoardSize withNumberOfLaps: aNumberOfLaps withDices: someDices

	|firstSquare|
	players := OrderedCollection new.
	board := Board lengthed: aBoardSize.
	firstSquare := board firstSquare.
	
	playerStates := Dictionary new.
	
	dices := someDices.
	
	somePlayers do: [ :eachPlayer |
		players add: eachPlayer.
		playerStates at: eachPlayer put: ( PlayerState positionedIn: firstSquare withLaps: 0 ).
	].
	
	currentPlayerIndex := 1.
	
	numberOfLaps := aNumberOfLaps.
	hasEnded := false.