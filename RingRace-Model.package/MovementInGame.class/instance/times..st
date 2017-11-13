execute
times: aTimesNumber
	|resultMovement|
	resultMovement := self.
	
	(aTimesNumber-1) timesRepeat: [ resultMovement := TwoChainedMovements withFirstMovement: resultMovement andSecondMovement: self in: board ].
	
	^resultMovement.