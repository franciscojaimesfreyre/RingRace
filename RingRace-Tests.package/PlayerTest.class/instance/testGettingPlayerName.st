tests
testGettingPlayerName
	"comment stating purpose of message"

	| player |
	player := Player named: 'Nico'.
	self assert: player name equals: 'Nico'.