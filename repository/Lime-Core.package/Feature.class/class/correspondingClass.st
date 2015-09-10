accessing
correspondingClass

	(self name endsWith: 'Feature') ifFalse: [ ^nil ].
	^Smalltalk globals
		at: (self name allButLast: 4) asSymbol
		ifAbsent: [ nil ]