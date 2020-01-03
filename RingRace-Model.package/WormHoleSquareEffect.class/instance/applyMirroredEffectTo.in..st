action
applyMirroredEffectTo: aPlayer in: aGameStateContext
	self 
		applyMovement: (SingleBackwardMovement new times: 4) 
		to: (aGameStateContext currentState players copyWithout: aPlayer) 
		in: aGameStateContext