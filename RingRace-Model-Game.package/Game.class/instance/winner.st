accessing
winner
	hasEnded ifFalse: [ GameHasNotEndedException signal: 'The game has not ended' ].
	^winner.