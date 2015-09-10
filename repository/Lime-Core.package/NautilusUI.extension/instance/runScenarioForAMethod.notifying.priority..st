*Lime-Core
runScenarioForAMethod: aMethod notifying: aBoolean priority: aPriority

	| scenarioMethod scenarioSemaphoreForMethod blockToEvaluate shouldAnnounce |
	
	scenarioMethod := aMethod correspondingScenarioMethod.
	scenarioMethod ifNil: [ ^self ].
	scenarioSemaphoreForMethod := Semaphore new. 
	shouldAnnounce := aBoolean.
	
	blockToEvaluate := [ | vScroll storyClass scenarioResult |
		vScroll := methodWidget vScrollValue.
		storyClass := scenarioMethod methodClass.
		scenarioResult := [ storyClass run: scenarioMethod selector ]
			on: Halt
			do: [ :ex | aBoolean
				ifTrue: [ 
					[ self runScenarioForAMethodWithAnHalt: aMethod ] fork.
					shouldAnnounce := false.
					TestAsserter classForTestResult new ]
				ifFalse: [
					TestAsserter classForTestResult new
						addFailure: (storyClass selector: scenarioMethod selector);
						yourself ]].
		scenarioResult updateResultsInHistory.
		
		scenarioSemaphoreForMethod signal.
						
		(aBoolean and: [ scenarioResult failures isEmpty not or: [ scenarioResult errors isEmpty not ]])
			ifTrue: [ storyClass debug: scenarioMethod selector ].
				
		ClassesIconsCache removeKey: aMethod methodClass ifAbsent: [ ].
		UIManager default defer: [ methodWidget vScrollValue: vScroll ]].
	
	aBoolean 
		ifTrue: [ blockToEvaluate forkAt: aPriority. ]
		ifFalse: [ blockToEvaluate value ].
	
	scenarioSemaphoreForMethod wait.
	
	shouldAnnounce
		ifTrue: [ | color |
			color := Color gray.
			scenarioMethod hasPassedTest ifTrue: [ color :=  Color green ].
			scenarioMethod hasFailedTest ifTrue: [ color :=  Color yellow ].
			scenarioMethod hasErrorTest ifTrue: [ color :=  Color red ].
			self
				notifyTitle: 'Scenario Finished' 
				contents: ('Method: <1p>>>#<2p>'
					expandMacrosWith: scenarioMethod methodClass
					with: scenarioMethod selector)
				color: color ].
	aBoolean ifFalse: [ testSemaphore signal ]