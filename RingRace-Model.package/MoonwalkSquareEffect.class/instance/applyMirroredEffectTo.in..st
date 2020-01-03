action
applyMirroredEffectTo: aPlayer in: aGameStateContext
		self
		applyMovement: (SingleBackwardMovement new times: squaresToMove)
		to: {aPlayer}
		in: aGameStateContext