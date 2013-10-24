*postmark-seaside
bccArray: anArray
	anArray notEmpty
		ifTrue: [ self bcc: (anArray collect: [ :each | each address greaseString ]) asCommaString ]