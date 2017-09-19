action
move: aPlayer in: aGame
	|state position|
	state := (aGame stateOf: aPlayer).
	position := state position.
	aGame at: aPlayer put: ( state withNewPosition: ( position next ) ).