action
applyTo: aPlayer in: boardPlayerStates 
	(boardPlayerStates players) do: [ :eachPlayer |
		boardPlayerStates at: eachPlayer put: ( BoardPlayerState positionedIn: 1 withLaps: 0 ).
	]