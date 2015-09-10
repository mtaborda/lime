private - parsing
parseStepsInto: aBodyNode

	[ self atEnd ] whileFalse: [
		aBodyNode addNode: self parseStep.
	]