action
applyTo: aPlayer in: aGame 
	(aGame players) do: [ :eachPlayer |
		aGame at: eachPlayer put: ( PlayerState positionedIn: 1 withLaps: 0 ).
	]