matching
isBestMatchingThan: anStep for: anStepNode

	^methodPragmas anySatisfy: [ :each | each arguments = anStepNode arguments ]