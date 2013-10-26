private
handleResponse: aZnResponse
	aZnResponse isSuccess
		ifTrue: [ ^ true ].
	self handleError: aZnResponse.
	^ false