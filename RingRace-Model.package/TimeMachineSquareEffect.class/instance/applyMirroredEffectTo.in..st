action
applyMirroredEffectTo: aPlayer in: aGameStateContext
	|previousPlayerPosition|
	
	((aGameStateContext currentState players) copyWithout: aPlayer) do: [ :eachPlayer |
		
			previousPlayerPosition := ((aGameStateContext lastGameStateBeforeChangesInLastTurnOf: eachPlayer ) stateOf: eachPlayer) positionInGame.
			aGameStateContext newState: ( aGameStateContext currentState withNewPlayerState: ( ( aGameStateContext currentState stateOf: eachPlayer ) withNewPositionInGame: 			previousPlayerPosition ) of: eachPlayer )
		
		]