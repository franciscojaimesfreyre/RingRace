action
move: aPlayer backward: aNumberOfSquares
aNumberOfSquares timesRepeat: [ (BackwardMovement moving: aPlayer into: self) execute ]