compiling
compile: aText classified: aCategory withStamp: aChangeStamp notifying: aRequestor logSource: aLogSource

	| newCategory |
	newCategory := aCategory.
	(aCategory = #'as yet unclassified' and: [ self isScenarioSource: aText ])
		ifTrue: [ newCategory := #scenarios ].
	^super
		compile: aText
		classified: newCategory
		withStamp: aChangeStamp
		notifying: aRequestor
		logSource: aLogSource