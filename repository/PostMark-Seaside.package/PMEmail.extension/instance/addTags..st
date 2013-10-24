*postmark-seaside
addTags: someTags
	someTags notEmpty
		ifTrue: [ self tag: someTags asCommaString ]