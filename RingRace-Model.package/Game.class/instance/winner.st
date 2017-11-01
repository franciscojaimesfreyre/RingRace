accessing
winner
	hasEnded
		ifFalse: [ GameException signal: 'Can not define winner until game has ended' ].
	^ winner