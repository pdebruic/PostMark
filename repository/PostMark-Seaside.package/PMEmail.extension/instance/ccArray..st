*postmark-seaside
ccArray: anArray
	anArray notEmpty
		ifTrue: [ self cc: (anArray collect: [ :each | each address greaseString ]) asCommaString ]