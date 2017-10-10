action
giveTurnTo: aPlayer
	self
		ifTurnOf: aPlayer
		andGameNotEndedDo: [ self saveStateOf: aPlayer.
			aPlayer play: (Turn of: self for: aPlayer withDices: dices).
			self advanceTurn]