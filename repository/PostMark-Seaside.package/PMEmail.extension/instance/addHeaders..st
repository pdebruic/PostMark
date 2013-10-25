*postmark-seaside
addHeaders: someHeaders
	someHeaders notNil
		ifTrue: [ 
			| headersToSend |
			headersToSend := someHeaders copy.
			someHeaders removeKey: 'Content-Type' ifAbsent: [  ].
			self headers: (Array with: someHeaders) ]