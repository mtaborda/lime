private
compileScenario

	|storyNode |
	storyNode := self translate.
	storyNode featureClass: self getClass.
	^storyNode generate: self compilationContext compiledMethodTrailer