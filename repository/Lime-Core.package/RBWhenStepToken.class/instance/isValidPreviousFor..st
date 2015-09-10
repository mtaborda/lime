testing
isValidPreviousFor: aToken

	^(self isKindOf: aToken)
		or: [ aToken = RBThenStepToken ]