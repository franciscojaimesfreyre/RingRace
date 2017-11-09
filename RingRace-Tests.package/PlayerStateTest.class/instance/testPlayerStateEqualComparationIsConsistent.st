tests
testPlayerStateEqualComparationIsConsistent
	self assert: ( PlayerState positionedIn: 2 withLaps: 5 ) equals: ( PlayerState positionedIn: 2 withLaps: 5 ).
	self assert: ( PlayerState positionedIn: 10 withLaps: 2 ) equals: ( PlayerState positionedIn: 10 withLaps: 2 ).
	self deny: ( ( PlayerState positionedIn: 10 withLaps: 2 ) = ( PlayerState positionedIn: 2 withLaps: 4 ) ). 
	self deny: ( ( PlayerState positionedIn: 11 withLaps: 2 ) = ( PlayerState positionedIn: 10 withLaps: 2 ) ). 
	self deny: ( ( PlayerState positionedIn: 10 withLaps: 3 ) = ( PlayerState positionedIn: 10 withLaps: 2 ) ). 