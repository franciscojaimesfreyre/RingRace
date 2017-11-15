action
activate: aCard in: aGame
	self ifItHas: aCard do: [ aGame activate: aCard for: self. cards remove: aCard ].