private - testing
canHandle: aString previous: aToken

	^(self keywordIs: aString)
		or: [ (Synonyms includes: aString) and: [ self = aToken class ]]