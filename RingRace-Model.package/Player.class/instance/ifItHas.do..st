action
ifItHas: aCard do: aBlock
	(cards anySatisfy:  [:eachCard | aCard == eachCard])
	ifTrue: aBlock
	ifFalse: [ Error signal: 'El jugador no tiene esa carta en su mano'. ]