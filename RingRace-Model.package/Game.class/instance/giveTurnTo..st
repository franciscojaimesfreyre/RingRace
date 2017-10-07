action
giveTurnTo: aPlayer
	self
		ifTurnOf: aPlayer
		andGameNotEndedDo: [ self saveStateOf: aPlayer.
			aPlayer play: (Turn of: self for: aPlayer withDices: dices).
			currentPlayerIndex = players size
				ifTrue: [ currentPlayerIndex := 1 ]
				ifFalse: [ currentPlayerIndex := currentPlayerIndex + 1 ] ]