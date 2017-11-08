tests
testPlayerStateEqualComparationIsConsistent
	self assert: ( PlayerStateInBoard positionedIn: 2 withLaps: 5 ) equals: ( PlayerStateInBoard positionedIn: 2 withLaps: 5 ).
	self assert: ( PlayerStateInBoard positionedIn: 10 withLaps: 2 ) equals: ( PlayerStateInBoard positionedIn: 10 withLaps: 2 ).
	self deny: ( ( PlayerStateInBoard positionedIn: 10 withLaps: 2 ) = ( PlayerStateInBoard positionedIn: 2 withLaps: 4 ) ). 
	self deny: ( ( PlayerStateInBoard positionedIn: 11 withLaps: 2 ) = ( PlayerStateInBoard positionedIn: 10 withLaps: 2 ) ). 
	self deny: ( ( PlayerStateInBoard positionedIn: 10 withLaps: 3 ) = ( PlayerStateInBoard positionedIn: 10 withLaps: 2 ) ). 