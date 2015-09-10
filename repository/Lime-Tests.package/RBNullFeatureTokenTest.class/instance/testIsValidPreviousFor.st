test testing
testIsValidPreviousFor

	| token |
	token := RBNullFeatureToken new.
	
	self assert: (token isValidPreviousFor: RBScenarioToken).
	self deny: (token isValidPreviousFor: RBGivenStepToken).
	self deny: (token isValidPreviousFor: RBWhenStepToken).
	self deny: (token isValidPreviousFor: RBThenStepToken)