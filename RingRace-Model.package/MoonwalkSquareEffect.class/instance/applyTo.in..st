action
applyTo: aPlayer in: aGameStateContext
	self
		applyMovement: (SingleBackwardMovement new times: squaresToMove)
		to: (aGameStateContext currentState players copyWithout: aPlayer)
		in: aGameStateContext