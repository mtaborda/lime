private - instance creation
allLeafSubclasses

	^self allSubclasses
		inject: OrderedCollection new
		into: [ :collection :each |
			each subclasses ifEmpty: [ collection add: each ].
			collection ]