action
giveTurnTo: aPlayer
	self
		ifTurnOf: aPlayer
		andGameNotEndedDo: [ 
			aPlayer play: (Turn of: self for: aPlayer withDices: dices).
			currentPlayerIndex = players size
				ifTrue: [ currentPlayerIndex := 1 ]
				ifFalse: [ currentPlayerIndex := currentPlayerIndex + 1 ] ]