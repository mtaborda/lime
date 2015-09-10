order
privateActionIcon
	"Return the icon for this action"
	
	| testIcon |
	
	testIcon := Smalltalk ui icons iconNamed: #testNotRunIcon.
	
	method hasPassedTest
		ifTrue: [ testIcon := Smalltalk ui icons iconNamed: #testGreenIcon ].
	method hasFailedTest
		ifTrue: [ testIcon := Smalltalk ui icons iconNamed: #testYellowIcon ].
	method hasErrorTest
		ifTrue: [ testIcon := Smalltalk ui icons iconNamed: #testRedIcon ].
	
	^IconicButton new
		target: self browser;
		actionSelector: #runScenarioForAMethod:notifying:;
		arguments: {method. true};
		labelGraphic: testIcon;
		color: Color transparent;
		helpText: 'Run the step';
		extent: 12 @ 12;
		borderWidth: 0