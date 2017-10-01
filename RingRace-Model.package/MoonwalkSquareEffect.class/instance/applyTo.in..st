action
applyTo: aPlayer in: aGame
	aGame players
		do: [ :eachPlayer | 
			(eachPlayer == aPlayer)
				ifFalse: [ aGame move: eachPlayer  backward: squaresToMove ] ]