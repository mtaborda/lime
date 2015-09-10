performing
perform

	| argsDict args index keys |
	argsDict := Dictionary new.
	args := OrderedCollection new.
	index := 1.
	node arguments first substrings do: [ :each |
		keywords size < index
			ifTrue: [
				argsDict at: keywords size + 1 ifAbsentPut: (WriteStream on: String new).
				(argsDict at: keywords size + 1) nextPutAll: each; space. ]
			ifFalse: [ (keywords at: index) = each
				ifFalse: [ 
					argsDict at: index ifAbsentPut: (WriteStream on: String new).
					(argsDict at: index) nextPutAll: each; space.
					index := index - 1 ]].
		index := index + 1 ].
	keys := argsDict keys asSortedCollection.
	keys do: [ :key |
		args add: (argsDict at: key) contents trimBoth ].
	receiver perform: selector withArguments: args asArray