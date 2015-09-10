accessing
scenarioSelectors

	^self selectors select: [ :each | (each beginsWith: 'Scenario:') ]