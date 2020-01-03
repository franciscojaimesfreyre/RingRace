accessing
lastGameStateBeforeChangesInLastTurnOf: aPlayer
	| reversedGameStates |
	reversedGameStates := gameStates reverse.
	^ reversedGameStates
		detect: [ :each | (each playerInTurn = aPlayer) & (each playerInTurn ~= (reversedGameStates after: each ifAbsent: each) playerInTurn) ] ifNone: [ gameStates first ]