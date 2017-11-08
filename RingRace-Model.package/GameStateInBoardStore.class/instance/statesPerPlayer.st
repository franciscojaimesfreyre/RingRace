accessing
statesPerPlayer
	|associations|
	
	associations := (self players) collect: [ :eachPlayer | Association key: eachPlayer value: ( self stateOf: eachPlayer ) ].
	
	^associations.