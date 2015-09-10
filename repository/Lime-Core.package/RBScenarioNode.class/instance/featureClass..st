accessing
featureClass: aClass

	compilationContext ifNil: [ compilationContext := aClass compiler compilationContext ].
	self compilationContext class: aClass