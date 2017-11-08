accessing
statesPerPlayer
	|associations|
	associations := OrderedCollection new.
	
	(self players) do: [ :eachPlayer | Association key: eachPlayer value: ( self stateOf: eachPlayer ) ].
	
	^associations.