printing
printOn: aStream

	aStream
		nextPutAll: self keyword;
		space.
	self arguments printOn: aStream