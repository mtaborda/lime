parsing
parse: textOrString 
	
	^self
		source: textOrString;
		parse