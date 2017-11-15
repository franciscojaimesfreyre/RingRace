tests
testWhenActivatingAInstantaneousCardItsPotenciacionEffectIsApplied
	| game nico potenciacionCard |
	nico := Player named: 'Nico'.
	game := Game
		withPlayers:
			{nico}
		withBoard:
			(Board
				withSquareEffects:
					{NoSquareEffect new.
					SpeedUpSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 2 2 2 2 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	potenciacionCard := InstantaneousCard withEffect: PotenciacionEffect new.
	nico give: potenciacionCard.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 6.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	nico activate: potenciacionCard in: game.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 10.
	self assert: (game stateOf: nico) positionInGame laps equals: 0