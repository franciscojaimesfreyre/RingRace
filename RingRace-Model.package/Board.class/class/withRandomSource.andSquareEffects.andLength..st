instantation
withRandomSource: randomSource andSquareEffects: someSquareEffects andLength: aLength
	|squaresProportionPerSquareEffect squaresPerSquareEffect|
	squaresProportionPerSquareEffect := Dictionary new.
	
	squaresProportionPerSquareEffect := Dictionary newFromPairs: {
		NoSquareEffect new. 0.4.
		AtomicBombSquareEffect new. 0.02.
		WormHoleSquareEffect new. 0.15.
		SpeedUpSquareEffect new. 0.15.
		MoonwalkSquareEffect new. 0.05.
		TimeMachineSquareEffect new. 0.23.
	}.
	
	"FIXME: La idea sería generar un diccionario de cantidad de squares por efecto, que se irá decrementando cada entrada a medida que se agrega un square. Por cada efecto se calcularía la proporción que le corresponde en cada iteración, para poder hallar el efecto que corresponde (Partiendo el intervalo de 0 a 1 en subintervalos, donde cada uno corresponde con un efecto posible).
	También es necesario calcular los squares que componen la parte fraccional total e ir decrementándola por cada vez que una cantidad de squares se torna negativa entre 0 y -1.
	En éste caso permitirlo hasta que éste numero se acabe.
	Caso contrario sólo se permite que lleguen a lo sumo a 0.
	Se tienen que retirar del diccionario los efectos que no pueden ser más agregados.
	De ésta manera el diccionario llegaría a vacío cuando se hallan agregados todos los squares de la 	longitud de tablero especificada."
	
	^self new initializeWithSquareEffects: someSquareEffects.