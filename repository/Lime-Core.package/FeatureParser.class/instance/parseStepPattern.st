private - parsing
parseStepPattern

	| selectorParts selectorStream |
	selectorParts := OrderedCollection new.
	selectorParts add: currentToken.
	self step.
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
	^selectorStream contents asSymbol