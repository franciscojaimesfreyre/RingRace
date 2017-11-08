instantation
withPlayers: somePlayers
	|statePerPlayerAssociations|
	statePerPlayerAssociations := OrderedCollection new.
	somePlayers do: [ :eachPlayer | statePerPlayerAssociations add: ( Association key: eachPlayer value: (PlayerStateInBoard positionedIn: 1 withLaps: 0) ) ].
	
	^self withStatesPerPlayer: statePerPlayerAssociations.