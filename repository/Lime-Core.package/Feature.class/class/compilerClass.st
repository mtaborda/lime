compiling
compilerClass

	^self class == Feature class
		ifTrue: [ self superCompilerClass ]
		ifFalse: [ FeatureCompiler ]