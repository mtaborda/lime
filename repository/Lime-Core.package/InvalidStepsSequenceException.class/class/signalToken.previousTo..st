signaling
signalToken: aToken previousTo: anotherToken

	(self token: aToken previousTo: anotherToken)
		signal: ('<1p> can not be followed by <2p>'
			expandMacrosWith: aToken
			with: anotherToken)