running
runCase

	[ self setUp.
	self performScenario ] ensure: [
		self tearDown.
		self cleanUpInstanceVariables ]