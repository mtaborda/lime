*Lime-Core
runScenarioForAMethodWithAnHalt: aMethod

	| scenarioMethod color vScroll storyClass scenarioResult  |
	
	scenarioMethod := aMethod correspondingScenarioMethod.
	scenarioMethod ifNil: [ ^ self ].

	vScroll := methodWidget vScrollValue.
	
	storyClass := scenarioMethod methodClass.
	scenarioResult := storyClass run: scenarioMethod selector.
	scenarioResult updateResultsInHistory.
		
	(scenarioResult failures isEmpty not or: [ scenarioResult errors isEmpty not ])
		ifTrue: [ storyClass debug: scenarioMethod selector ].
	ClassesIconsCache removeKey: aMethod methodClass ifAbsent: []. 
	UIManager default defer:  [ methodWidget vScrollValue: vScroll ].
	color := Color gray.
	aMethod hasPassedTest ifTrue: [ color :=  Color green ].
	aMethod hasFailedTest ifTrue: [ color :=  Color yellow ].
	aMethod hasErrorTest ifTrue: [ color :=  Color red ].

	self
		notifyTitle: 'Scenario Finished' 
		contents: ('Method: <1s>>>#<2s>'
			expandMacrosWith: scenarioMethod methodClass
			with: scenarioMethod selector)
		color: color