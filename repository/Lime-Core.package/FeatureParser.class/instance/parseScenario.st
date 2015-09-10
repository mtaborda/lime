private - parsing
parseScenario

	| scenarioNode |
	scenarioNode := self parseScenarioPattern.
	[ | body |
	body := RBSequenceNode new.
	self parseStepsInto: body.
	scenarioNode body: body ]
		on: InvalidStepsSequenceException
		do: [ :ex | self parserError: ex description ].
	^scenarioNode