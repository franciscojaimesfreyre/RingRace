action
createUndoPositionChangeBlockFor: somePlayers
	| gameStateContext oldCurrentState |
	gameStateContext := self.
	oldCurrentState := gameStateContext currentState.
	^[ gameStateContext newState: ( gameStateContext currentState withNewPlayerPositionsFrom: oldCurrentState of: somePlayers ) ]