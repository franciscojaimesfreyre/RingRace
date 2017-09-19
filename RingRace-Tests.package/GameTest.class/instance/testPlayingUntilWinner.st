tests
testPlayingUntilWinner
	|game player1 player2 players firstSquare|
	player1 := Player named: 'Nico'.
	player2 := Player named: 'Santi'.
	players := { player1 . player2 }.
	game := Game withPlayers: players withBoardSize: 10 withNumberOfLaps: 2 withDices: { DeterministicDice withNumbers: #( 3 2 5 1 2 3 5). DeterministicDice withNumbers: #( 2 1 3 4 3 4 3) }.
	firstSquare := game board firstSquare.
	
	self assert: ( ( game stateOf: player1 ) position == firstSquare ).
	self assert: ( ( game stateOf: player1 ) laps = 0 ).
	self assert: ( ( game stateOf: player2 ) position == firstSquare ).
	self assert: ( ( game stateOf: player2 ) laps = 0 ).
	
	"Mueve jugador1 5"
	
	game giveTurn.
	
	self assert: ( ( game stateOf: player1 ) position == firstSquare next next next next next).
	self assert: ( ( game stateOf: player1 ) laps = 0 ).
	self assert: ( ( game stateOf: player2 ) position == firstSquare ).
	self assert: ( ( game stateOf: player2 ) laps = 0 ).
	
	"Mueve jugador2 3"
	
	game giveTurn.
	
	self assert: ( ( game stateOf: player1 ) position == firstSquare next next next next next).
	self assert: ( ( game stateOf: player1 ) laps = 0 ).
	self assert: ( ( game stateOf: player2 ) position == firstSquare next next next ).
	self assert: ( ( game stateOf: player2 ) laps = 0 ).
	
	"Mueve jugador1 8"
	
	game giveTurn.
	
	self assert: ( ( game stateOf: player1 ) position == firstSquare next next next next next next next next next next next next next).
	self assert: ( ( game stateOf: player1 ) laps = 1 ).
	self assert: ( ( game stateOf: player2 ) position == firstSquare next next next ).
	self assert: ( ( game stateOf: player2 ) laps = 0 ).
	
	"Mueve jugador2 5"
	
	game giveTurn.
	
	self assert: ( ( game stateOf: player1 ) position == firstSquare next next next next next next next next next next next next next).
	self assert: ( ( game stateOf: player1 ) laps = 1 ).
	self assert: ( ( game stateOf: player2 ) position == firstSquare next next next next next next next next ).
	self assert: ( ( game stateOf: player2 ) laps = 0 ).
	
	"Mueve jugador1 5"
	
	game giveTurn.
	
	self assert: ( ( game stateOf: player1 ) position == firstSquare next next next next next next next next next next next next next next next next next next).
	self assert: ( ( game stateOf: player1 ) laps = 1 ).
	self assert: ( ( game stateOf: player2 ) position == firstSquare next next next next next next next next ).
	self assert: ( ( game stateOf: player2 ) laps = 0 ).
	
	"Mueve jugador2 7"
	
	game giveTurn.
	
	self assert: ( ( game stateOf: player1 ) position == firstSquare next next next next next next next next next next next next next next next next next next).
	self assert: ( ( game stateOf: player1 ) laps = 1 ).
	self assert: ( ( game stateOf: player2 ) position == firstSquare next next next next next next next next next next next next next next next ).
	self assert: ( ( game stateOf: player2 ) laps = 1 ).
	
	"Mueve jugador1 8"
	
	game giveTurn.
	
	self assert: ( ( game stateOf: player1 ) position == firstSquare next next next next next next next next next next next next next next next next next next next ).
	self assert: ( ( game stateOf: player1 ) laps = 2 ).
	self assert: ( ( game stateOf: player2 ) position == firstSquare next next next next next next next next next next next next next next next ).
	self assert: ( ( game stateOf: player2 ) laps = 1 ).
	
	self assert: ( game winner == player1 ).
