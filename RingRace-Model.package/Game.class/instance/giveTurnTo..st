action
giveTurnTo: aPlayer
	self
		ifTurnOf: aPlayer
		andGameNotEndedDo: [ 
			aPlayer play: (Turn of: gameStateContext for: aPlayer withDices: dices).
			self advanceTurn ]