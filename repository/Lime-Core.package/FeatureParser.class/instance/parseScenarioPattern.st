private - parsing
parseScenarioPattern

	| selectorParts selectorStream |
	selectorParts := OrderedCollection new.
	[ currentToken isStep or: [ self atEnd ]] whileFalse: [ 
		selectorParts add: currentToken.
		self step ].
	selectorStream := WriteStream on: String new.
	selectorParts
		inject: selectorStream
		into: [ :stream :token | stream
			nextPutAll: token value;
			space;
			yourself ].
	^RBScenarioNode selector: selectorStream contents asSymbol