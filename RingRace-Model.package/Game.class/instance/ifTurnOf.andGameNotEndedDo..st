enumerating
ifTurnOf: arg1 andGameNotEndedDo: arg2
	hasEnded
		ifTrue: [ GameException signal: 'Game has ended' ].
	(players at: currentPlayerIndex) = arg1
		ifFalse: [ GameException
				signal:
					('You can not play out of turn, current player is: <1s>'
						expandMacrosWith: arg1 name) ].
	arg2 value