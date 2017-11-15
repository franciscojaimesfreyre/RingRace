action
applyTo: aPlayer in: aGameStateContext
	| gameState undoEffectBlock players |
	gameState := aGameStateContext currentState.
	players := gameState players copyWithout: aPlayer.
	undoEffectBlock := aGameStateContext createUndoPositionChangeBlockFor: players.
	players do: [ :player | 
			gameState := gameState
				withNewPlayerState:
					((gameState stateOf: player)
						withNewPositionInGame:
							((SingleBackwardMovement new times: squaresToMove)
								newPositionInGameFrom: (gameState stateOf: player) positionInGame
								withBoard: aGameStateContext board))
				of: player ].
	aGameStateContext newState: (gameState withUndoLastEffectBlock: undoEffectBlock)