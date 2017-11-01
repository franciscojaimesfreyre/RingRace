action
applyTo: arg1 in: arg2
	arg2 players
		do: [ :arg3 | 
			arg3 ~~ arg1
				ifTrue: [ arg2 move: arg3 backward: squaresToMove ] ]