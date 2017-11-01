tests
testNumbersMatch
	| tmp1 tmp2 |
	tmp1 := #(4 3 5 6 3 2 8).
	tmp2 := Dice withNumbersFrom: (ReadStream on: tmp1).
	tmp1 do: [ :arg1 | self assert: tmp2 throw equals: arg1 ]