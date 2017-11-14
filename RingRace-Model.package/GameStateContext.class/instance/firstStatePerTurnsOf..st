accessing
firstStatePerTurnsOf: aPlayer
	|hasDetected playerStates|
	hasDetected := false.
	playerStates := OrderedCollection new.
	
	gameStates do: [ :eachGameState | ( eachGameState playerInTurn == aPlayer ) ifTrue: [
			(hasDetected == false) ifTrue: [
				playerStates add: (eachGameState stateOf: aPlayer).
				hasDetected := true.
				]
			 ]
			 ifFalse: [ hasDetected := false ]
		].
	
	^playerStates.