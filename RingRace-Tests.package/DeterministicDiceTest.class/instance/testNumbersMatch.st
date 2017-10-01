tests
testNumbersMatch
	|numbers dice|
	
	numbers := #( 4 3 5 6 3 2 8 ).
	dice := Dice withNumbersFrom: ( ReadStream on: numbers ).
	
	numbers do: [ :eachNumber | self assert: (dice throw) equals: eachNumber ].