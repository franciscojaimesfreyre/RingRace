as yet unclassified
activatingIn: aGameStateContext for: aPlayer
	aGameStateContext newState: (aGameStateContext currentState withNewActivePermanentCard: self for: aPlayer)