instance creation
for: aString startingOn: tokenStart previous: aToken

	| handler |
	handler := self allLeafSubclasses
		detect: [ :each | each canHandle: aString previous: aToken ]
		ifNone: [ RBLiteralToken ].
	^((handler = RBLiteralToken) or: [ aToken isValidPreviousFor: handler ])
		ifTrue: [ handler value: aString start: tokenStart ]
		ifFalse: [ InvalidStepsSequenceException signalToken: aToken previousTo: handler ]