action
applyActivatedCards
	self putLastSquareEffect: ( NoSquareEffect new ).
	gameStateContext currentState activatedCards
		select: [ :eachCardActivation | eachCardActivation player == player ]
		thenDo: [ :eachCardActivation | eachCardActivation card effect applyTo: eachCardActivation player in: gameStateContext ]