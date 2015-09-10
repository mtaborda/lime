*Lime-Core
isScenarioMethod

	^self methodClass isStory and: [
		self methodClass isScenarioMethod: self ]