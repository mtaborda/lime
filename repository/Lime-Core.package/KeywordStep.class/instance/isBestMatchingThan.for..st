matching
isBestMatchingThan: anStep for: anStepNode

	^methodPragmas anySatisfy: [ :each | | args |
		args := each arguments first.
		arguments do: [ :arg | args := args copyReplaceTokens: arg with: '*' ].
		args match: anStepNode arguments first ]