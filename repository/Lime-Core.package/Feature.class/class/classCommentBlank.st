accessing comment
classCommentBlank

	| existingComment stream |
	existingComment := self theNonMetaClass organization classComment.
	existingComment isEmpty
		ifFalse: [ existingComment ].
	^self == Feature
		ifTrue: [ super classCommentBlank ]
		ifFalse: [
			stream := String new writeStream.
			stream
			nextPutAll: 'Please, use this box to write the feature''s narrative following the next template:';
			cr; nextPutAll: '--------------------------------------------------------------------------------';
			cr; nextPutAll: 'Narrative:';
			cr; tab; nextPutAll: 'In order to communicate effectively to the business some functionality';
			cr; tab; nextPutAll: 'As a development team';
			cr; tab; nextPutAll: 'I want to use Behaviour-Driven Development'.
			stream contents ]