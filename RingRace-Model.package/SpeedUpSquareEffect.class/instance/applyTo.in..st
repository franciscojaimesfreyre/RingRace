action
applyTo: aPlayer in: aGameStateContext
	self applyMovement: (SingleForwardMovement new times: 4) to: {aPlayer} in: aGameStateContext