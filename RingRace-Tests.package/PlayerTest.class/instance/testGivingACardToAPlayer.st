tests
testGivingACardToAPlayer

	| nico aCard |
	nico := Player named: 'Nico'.
	aCard := Card withEffect: PotentationEffect new.
	nico give: aCard.
	self assert: nico cards equals: (OrderedCollection with: aCard)