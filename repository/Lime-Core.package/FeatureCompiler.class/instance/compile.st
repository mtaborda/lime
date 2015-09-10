public access
compile

	^(Feature isScenarioSource: source contents)
		ifTrue: [ self compileScenario ]
		ifFalse: [ self compileMethod ]