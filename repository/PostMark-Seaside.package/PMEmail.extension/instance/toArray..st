*postmark-seaside
toArray: anArray
	anArray notEmpty
		ifTrue: [ self to: (self convertEmailAddressesToCommaString: anArray) ]