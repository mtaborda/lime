parsing
parseStep: anStepClass

	| start selector |
	start := currentToken start.
	selector := self parseStepPattern.
	^anStepClass
		value: selector
		start: start
		stop: start + selector size