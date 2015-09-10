private - running
performScenario

	| source scenarioNode stepNodes |
	source := self class sourceCodeAt: testSelector.
	scenarioNode := FeatureParser parse: source.
	stepNodes := scenarioNode body statements.
	stepNodes do: [ :node | self performStepNode: node ]