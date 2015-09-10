as yet unclassified
stepRepresentsTheOutcomeOfTheEvent: anEventName

	<Then: #'step represents the outcome of the event $anEventName'>
	self assert: eventName = anEventName