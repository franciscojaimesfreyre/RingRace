initialization
initializeWithStatesPerPlayer: someStatePerPlayerAssocations
	playerStatesHistoryPerPlayer := Dictionary new.
	
	someStatePerPlayerAssocations do: [ :eachAssociation | playerStatesHistoryPerPlayer at: ( eachAssociation key ) put: ( OrderedCollection with: ( eachAssociation value ) ) ].