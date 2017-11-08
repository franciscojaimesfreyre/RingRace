instantiation
withPlayers: somePlayers withBoard: aBoard withDices: someDices winningWhen: aWinningCondition
	^ self new
		initializeWithPlayers: somePlayers
		andBoard: aBoard
		withDices: someDices
		winningWhen: aWinningCondition.