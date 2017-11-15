action
newTransformedLastState: aTransformerBlock
	self newState: ( aTransformerBlock value: ( self currentState ) ).