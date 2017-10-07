action
applyTo: aPlayer in: aGame
	aGame players
		do: [ :eachPlayer | 
			eachPlayer ~~ aPlayer
				ifTrue: [ aGame move: eachPlayer backward: squaresToMove ] ]