*postmark-seaside
convertEmailAddressesToCommaString: anArray
	^ (anArray
		collect: [ :each | 
			each isString
				ifTrue: [ each ]
				ifFalse: [ each address greaseString ] ]) asCommaString