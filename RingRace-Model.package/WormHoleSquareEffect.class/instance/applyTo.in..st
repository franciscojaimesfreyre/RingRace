action
applyTo: aPlayer in: aGameStateContext
	self applyMovement: (SingleBackwardMovement new times: 4) to: {aPlayer} in: aGameStateContext