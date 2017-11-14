instantiation
advancingWithSquares: aSquaresQuantity
	^( aSquaresQuantity ~= 0 ) ifTrue: [ ( (aSquaresQuantity > 0) ifTrue: [ SingleForwardMovement new ] ifFalse: [ SingleBackwardMovement new ] ) times: ( aSquaresQuantity abs ) ] ifFalse: [ NoMovement new ].