action
advanceTurn
	currentPlayerIndex = players size
		ifTrue: [ currentPlayerIndex := 1 ]
		ifFalse: [ currentPlayerIndex := currentPlayerIndex + 1 ]