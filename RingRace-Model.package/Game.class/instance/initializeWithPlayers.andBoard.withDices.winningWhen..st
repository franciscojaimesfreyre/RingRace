initialization
initializeWithPlayers: somePlayers andBoard: aBoard withDices: someDices winningWhen: aWinningCondition
	players := OrderedCollection withAll: somePlayers.
	gameStateContext := GameStateContext withPlayers: players in: aBoard andWhenStateIsUpdatedDo: [ players do: [ :eachPlayer | winnerValidator
				check: (self stateOf: eachPlayer )
				ifWinnerDo: [ hasEnded := true.
					winner := eachPlayer ] ] ].
	winnerValidator := WinnerValidator checking: aWinningCondition.
	dices := someDices.
	currentPlayerIndex := 1.
	hasEnded := false