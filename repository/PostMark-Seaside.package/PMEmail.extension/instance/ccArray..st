*postmark-seaside
ccArray: anArray
	anArray notEmpty
		ifTrue: [ self cc: (self convertEmailAddressesToCommaString: anArray) ]