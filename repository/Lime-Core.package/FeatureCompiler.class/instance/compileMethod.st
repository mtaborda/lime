private
compileMethod

	| compiler |
	compiler := Feature superCompilerClass
		environment: self compilationContext environment;
		class: self getClass.
	^compiler
		source: source contents;
		requestor: self compilationContext requestor;
		category: self compilationContext category;
		failBlock:  [ ^nil ];
		compile