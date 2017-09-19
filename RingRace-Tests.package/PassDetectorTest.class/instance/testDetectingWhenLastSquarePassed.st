tests
testDetectingWhenLastSquarePassed
	|game player passDetector forwardMovement |
	player := Player named: 'Fran'.
	game := Game withPlayers: { player } withBoardSize: 3 withNumberOfLaps: 3 withDices: { DeterministicDice withNumbers: #( 1 2 3 ) }.
	
	forwardMovement := ForwardMovement create.
	
	passDetector := PassDetector watch: ( (game board) lastSquare ) in: game.
	
	self assert: (passDetector test: [forwardMovement move: player in: game.]
										for: player) not.
										
	self assert: (passDetector test: [forwardMovement move: player in: game.]
										for: player) not.
										
	self assert: (passDetector test: [forwardMovement move: player in: game.]
										for: player).
					