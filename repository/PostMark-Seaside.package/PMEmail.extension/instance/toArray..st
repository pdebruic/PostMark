*postmark-seaside
toArray: anArray
	anArray notEmpty
		ifTrue: [ self to: (anArray collect: [ :each | each address greaseString ]) asCommaString ]