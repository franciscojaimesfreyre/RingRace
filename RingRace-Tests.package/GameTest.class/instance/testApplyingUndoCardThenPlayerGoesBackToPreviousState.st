tests
testApplyingUndoCardThenPlayerGoesBackToPreviousState
	| game nico aCard |
	nico := Player named: 'Nico'.
	game := Game
		withPlayers: {nico}
		withBoard:
			(Board
				withSquareEffects:
					{NoSquareEffect new.
					NoSquareEffect new.
					AtomicBombSquareEffect new})
		withNumberOfLaps: 3
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 1)))}.
		
	aCard := Card withEffect: (UndoCardEffect new).
	nico give: aCard.
	
	self assert: (game stateOf: nico) position equals: 1.
	self assert: (game stateOf: nico) laps equals: 0.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) position equals: 2.
	self assert: (game stateOf: nico) laps equals: 0.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) position equals: 1.
	self assert: (game stateOf: nico) laps equals: 0.
	nico throws: aCard in: game.
	self assert: (game stateOf: nico) position equals: 2.
self assert: (game stateOf: nico) laps equals: 0