comparing
= another
	^ ( ( self class ) = ( another class ) ) ifTrue: [ ( ( another position ) = ( self position ) ) and: ( ( another laps ) = ( self laps ) ) ] ifFalse: [ false ].