private - stepping
step

	nextToken notNil 
		ifTrue: [
			currentToken := nextToken.
			nextToken := nil ]
		ifFalse: [ currentToken := scanner next ]