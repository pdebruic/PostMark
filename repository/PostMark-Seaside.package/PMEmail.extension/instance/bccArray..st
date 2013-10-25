*postmark-seaside
bccArray: anArray
	anArray notEmpty
		ifTrue: [ self bcc: (self convertEmailAddressesToCommaString: anArray) ]