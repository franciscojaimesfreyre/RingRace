action
giveTurnTo: aPlayer
	hasEnded
		ifFalse: [ | currentPlayer |
			currentPlayer := players at: currentPlayerIndex.
			(currentPlayer == aPlayer) ifTrue: [  
			currentPlayer play: (Turn of: self for: currentPlayer withDices: dices).
			currentPlayerIndex = players size
				ifTrue: [ currentPlayerIndex := 1 ]
				ifFalse: [ currentPlayerIndex := currentPlayerIndex + 1 ] ]
			ifFalse:[ NotYourTurnException signal: 'This is not your turn' ] ]
		ifTrue: [ GameEndedException signal: 'Game has been ended' ]