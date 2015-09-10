parsing
parseScenario: aString

	| node errorNode |
	currentToken isScenario
		ifFalse: [ self parserError: 'Unknown scenario' ].
	node := self parseScenario.
	self atEnd
		ifFalse: [ 
			errorNode := self parserError: 'Unknown input at end'.
			errorNode ifNotNil: [ node statements: node statements, {errorNode} ]].
	node source: aString.
	^node