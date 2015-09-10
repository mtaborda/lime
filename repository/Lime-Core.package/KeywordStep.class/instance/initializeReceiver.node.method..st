initialize - release
initializeReceiver: aReceiver node: anStepNode method: aCompiledMethod

	| args |
	receiver := aReceiver.
	selector := aCompiledMethod selector.
	args := (aCompiledMethod pragmaAt: anStepNode keyword) arguments first.
	keywords := args substrings reject: [ :each | each beginsWith: '$' ].
	arguments := args substrings select: [ :each | each beginsWith: '$' ].
	node := anStepNode.
	methodPragmas := aCompiledMethod pragmas