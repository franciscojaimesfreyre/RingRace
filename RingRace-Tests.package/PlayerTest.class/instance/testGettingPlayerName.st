tests
testGettingPlayerName
	| tmp1 |
	tmp1 := Player named: 'Nico'.
	self assert: tmp1 name equals: 'Nico'