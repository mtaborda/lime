private - scanning
scanLiteralOrKeyword

	| newStoryToken |
	self scanName.
	newStoryToken := RBFeatureToken
		for: buffer contents
		startingOn: tokenStart
		previous: previousStoryToken.
	(newStoryToken isKindOf: RBFeatureToken)
		ifTrue: [ previousStoryToken := newStoryToken ].
	self step.
	^newStoryToken