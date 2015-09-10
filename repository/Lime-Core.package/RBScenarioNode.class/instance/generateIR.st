code generation
generateIR

	| ir |
	ir := (self compilationContext astTranslatorClass new
			visitNode: self)
			ir.
	ir sourceNode: self.
	^self ir: ir