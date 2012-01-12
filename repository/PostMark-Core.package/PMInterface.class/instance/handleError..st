private
handleError: aZnResponse
	aZnResponse isAuthenticationRequired
		ifTrue: [ ^PMException signal: 'Incorrect API Key.' ] .
	aZnResponse status =  422
		ifTrue: [ ^self processIncorrectFields: aZnResponse contents].
		
	PMException signal: 'Unkown error: ' , aZnResponse status printString.