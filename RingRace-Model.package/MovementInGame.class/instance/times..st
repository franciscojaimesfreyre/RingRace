execute
times: aTimesNumber
	|resultMovement|
	resultMovement := self.
	
	(aTimesNumber > 0) ifTrue: [ (aTimesNumber-1) timesRepeat: [ resultMovement := TwoChainedMovements withFirstMovement: resultMovement andSecondMovement: self in: board ] ] ifFalse: [ Exception signal: 'Expected positive times number' ].
	
	^resultMovement.