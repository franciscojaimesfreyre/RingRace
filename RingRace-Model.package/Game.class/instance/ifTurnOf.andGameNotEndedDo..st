enumerating
ifTurnOf: aPlayer andGameNotEndedDo: aBlockClosure
	hasEnded
	ifTrue: [ GameException signal: 'Game has ended' ].
		(players at: currentPlayerIndex) = aPlayer
			ifFalse: [ GameException signal: ('You can not play out of turn, current player is: <1s>' expandMacrosWith: aPlayer name) ].
			aBlockClosure value.
				
		