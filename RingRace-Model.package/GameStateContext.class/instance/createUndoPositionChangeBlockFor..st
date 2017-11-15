action
createUndoPositionChangeBlockFor: somePlayers
	| oldPositionsPerPlayer gameStateContext |
	oldPositionsPerPlayer := somePlayers
		collect: [ :eachPlayer | Association key: eachPlayer value: (self currentState stateOf: eachPlayer) positionInGame ].
	gameStateContext := self.
	^ [ | newStateWithUndoes |
	newStateWithUndoes := gameStateContext currentState.
	oldPositionsPerPlayer
		do: [ :eachPositionPerPlayer | 
			| eachPlayer eachOldPosition |
			eachPlayer := eachPositionPerPlayer key.
			eachOldPosition := eachPositionPerPlayer value.
			newStateWithUndoes := newStateWithUndoes
				withNewPlayerState: ((newStateWithUndoes stateOf: eachPlayer) withNewPositionInGame: eachOldPosition)
				of: eachPlayer ].
			gameStateContext newState: newStateWithUndoes ]