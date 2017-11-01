action
giveTurnTo: arg1
	self
		ifTurnOf: arg1
		andGameNotEndedDo: [ self saveStateOf: arg1.
			arg1 play: (Turn of: self for: arg1 withDices: dices).
			self advanceTurn ]