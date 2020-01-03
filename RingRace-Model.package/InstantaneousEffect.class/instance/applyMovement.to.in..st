action
applyMovement: aMovement to: somePlayers in: aGameStateContext
	| undoLastEffectBlock |
	undoLastEffectBlock := aGameStateContext createUndoPositionChangeBlockFor: somePlayers.
	aGameStateContext
		newState:
			((aGameStateContext currentState
				withTransformedPlayerStates: [ :eachPlayerState | aMovement newPlayerStateFrom: eachPlayerState withBoard: aGameStateContext currentState board ]
				of: somePlayers) withUndoLastEffectBlock: undoLastEffectBlock)