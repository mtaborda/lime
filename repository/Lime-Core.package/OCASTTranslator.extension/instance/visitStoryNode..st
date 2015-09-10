*Lime-Core
visitStoryNode: aStoryNode

	methodBuilder compilationContext: aStoryNode compilationContext.
	methodBuilder properties: aStoryNode properties.
	methodBuilder numArgs: aStoryNode arguments size.
	methodBuilder
		pushReceiver;
		returnTop