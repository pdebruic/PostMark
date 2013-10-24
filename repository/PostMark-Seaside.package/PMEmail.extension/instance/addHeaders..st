*postmark-seaside
addHeaders: someHeaders
	someHeaders notNil
		ifTrue: [ self headers: (Array with: someHeaders) ]