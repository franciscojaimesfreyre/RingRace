instantation
withEffects: someEffects eachWithProbability: someProbabilities 
	|probabilitiesTotal|
	probabilitiesTotal := 0.
	someProbabilities do: [ :each | probabilitiesTotal := probabilitiesTotal + each ].
	((someEffects size = someProbabilities size) and: probabilitiesTotal = 100)
	ifTrue: [ ^self new initializeWithEffects: someEffects eachWithProbability: someProbabilities  ]
	ifFalse: [ GameException signal: 'Probabilidades de efectos invalidas' ]