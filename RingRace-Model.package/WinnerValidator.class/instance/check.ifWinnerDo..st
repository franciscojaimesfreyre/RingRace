enumerating
check: aPlayerState ifWinnerDo: aBlock
	(winningCondition checkingFor: aPlayerState)
	ifTrue: aBlock