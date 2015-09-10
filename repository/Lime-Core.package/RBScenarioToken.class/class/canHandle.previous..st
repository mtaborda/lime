private - testing
canHandle: aString previous: aToken

	^Keyword = aString and: [ 
		aToken isKindOf: RBNullFeatureToken ]