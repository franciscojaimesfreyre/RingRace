action
giveTurn
	hasEnded
		ifFalse: [ | currentPlayer |
			currentPlayer := players at: currentPlayerIndex.
			currentPlayer play: (Turn of: self for: currentPlayer withDices: dices).
			currentPlayerIndex = players size
				ifTrue: [ currentPlayerIndex := 1 ]
				ifFalse: [ currentPlayerIndex := currentPlayerIndex + 1 ] ]
		ifTrue: [ GameEndException signal: 'Game has been ended' ]