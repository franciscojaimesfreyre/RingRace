action
throws: aCard in: aGame 
	cards remove: aCard.
	aGame applyCard: aCard for: self.