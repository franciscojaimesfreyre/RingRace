accessing
withNewTurnOf: aPlayer
	^self class withPlayerStates: (Dictionary withAll: playerStates ) withCurrentTurnOf: aPlayer.