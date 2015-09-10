private - instance creation
receiver: aReceiver node: anStepNode method: aCompiledMethod

	^self new
		initializeReceiver: aReceiver
		node: anStepNode
		method: aCompiledMethod