action
applyTo: aPlayer in: aGame
	aGame players reject: [ :player | player = aPlayer ]thenDo: [ :player | aGame move: player backward: squaresToMove ]