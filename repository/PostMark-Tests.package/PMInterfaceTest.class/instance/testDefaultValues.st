testing
testDefaultValues
	| interface |
	interface := PMInterface new.
	self deny: interface developmentMode.
	interface debugStream: ('' writeStream).
	self assert: interface developmentMode.
	
	self assert: interface apiUrl equals: interface defaultApiUrl.