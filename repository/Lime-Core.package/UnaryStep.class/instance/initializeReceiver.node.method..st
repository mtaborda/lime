initialize - release
initializeReceiver: aReceiver node: anStepNode method: aCompiledMethod

	receiver := aReceiver.
	selector := aCompiledMethod selector.
	methodPragmas := aCompiledMethod pragmas