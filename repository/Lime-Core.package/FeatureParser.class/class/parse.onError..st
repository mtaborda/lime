parsing
parse: aString onError: aBlock
	
	| parser |
	parser := self new.
	parser errorBlock: aBlock.
	parser initializeParserWith: aString.
	^parser parseScenario: aString