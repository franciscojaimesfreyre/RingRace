action
applyTo: aPlayer in: aGameStateContext
	|undoEffectBlock|
	undoEffectBlock := aGameStateContext createUndoPositionChangeBlockFor: { aPlayer }.
	aGameStateContext
		newTransformedLastState: [ :gameState | 
			( gameState
				withTransformedPlayerState: [ :playerState | (SingleForwardMovement new times: 4) newPlayerStateFrom: playerState withBoard: aGameStateContext board ]
				of: aPlayer ) withUndoLastEffectBlock: undoEffectBlock ]