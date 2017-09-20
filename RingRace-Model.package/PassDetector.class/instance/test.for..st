testing
test: aBlockClosure for: aPlayer 
	|playerSquare isPlayerSquareWatched|
	playerSquare := ( game stateOf: aPlayer ) position.
	isPlayerSquareWatched := playerSquare == watchedSquare.  
	aBlockClosure value.
	^(isPlayerSquareWatched and: ((( game stateOf: aPlayer ) position) == watchedSquare next )).