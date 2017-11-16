action
applyTo: aPlayer in: aGameStateContext
	|previousPlayerPosition|
	previousPlayerPosition := ((aGameStateContext lastGameStateBeforeChangesInLastTurnOf: aPlayer ) stateOf: aPlayer) positionInGame.
	aGameStateContext newState: ( aGameStateContext currentState withNewPlayerState: ( ( aGameStateContext currentState stateOf: aPlayer ) withNewPositionInGame: previousPlayerPosition ) of: aPlayer ).