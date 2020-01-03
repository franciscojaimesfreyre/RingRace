action
applyMirroredEffectTo: aPlayer in: aGameStateContext
	self 
	applyMovement: (SingleForwardMovement new times: 4) 
	to: (aGameStateContext currentState players copyWithout: aPlayer) 
	in: aGameStateContext