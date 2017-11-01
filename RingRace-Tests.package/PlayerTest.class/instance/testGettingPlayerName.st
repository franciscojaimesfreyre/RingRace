tests
testGettingPlayerName
	| player |
	player := Player named: 'Nico'.
	self assert: player name equals: 'Nico'