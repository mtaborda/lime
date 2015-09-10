accessing
arguments

	^{ (self value
		copyFrom: self keyword size
		to: self value size) trimBoth asSymbol }