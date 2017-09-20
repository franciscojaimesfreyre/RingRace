accessing
winner
	hasEnded ifFalse: [ NotWinnerYetException signal: 'The game has not ended' ].
	^winner.