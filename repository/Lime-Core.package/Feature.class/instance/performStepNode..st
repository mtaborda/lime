private - running
performStepNode: anStepNode

	| matchingSteps |
	matchingSteps := (steps
		inject: OrderedCollection new
		into: [ :collection :step | | methods |
			methods := step class methods select: [ :method | method hasPragmaNamed: anStepNode keyword ].
			collection
				addAll: (methods collect: [ :each | Step for: step node: anStepNode method: each ]);
				yourself ]).
	matchingSteps ifEmpty: [
		self signalFailure: ('Could not found an step implementing <1p>' expandMacrosWith: anStepNode) ].
	
	(matchingSteps asSortedCollection: [ :one :other |
		one isBestMatchingThan: other for: anStepNode ]) first perform