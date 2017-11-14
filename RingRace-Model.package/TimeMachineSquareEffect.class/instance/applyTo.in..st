action
applyTo: aPlayer in: aGameStateContext
	|previousPlayerPosition|
	previousPlayerPosition := (aGameStateContext firstStatePerTurnsOf: aPlayer ) last positionInGame.
	aGameStateContext newState: ( aGameStateContext currentState withNewPlayerState: ( ( aGameStateContext currentState stateOf: aPlayer ) withNewPositionInGame: previousPlayerPosition ) of: aPlayer ).