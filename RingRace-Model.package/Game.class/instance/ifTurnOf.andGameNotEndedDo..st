testing
ifTurnOf: aPlayer andGameNotEndedDo: aBlockClosure
	hasEnded
		ifFalse: [ (players at: currentPlayerIndex)= aPlayer
				ifTrue: aBlockClosure
				ifFalse: [ NotYourTurnException signal: 'This is not your turn'] ]
		ifTrue: [ GameEndedException signal: 'Game has been ended' ]