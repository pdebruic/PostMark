testing
testAccessors
	| interface |
	interface  := PMInterface new.
	interface apiKey: 'KEY'.
	self assert: interface apiKey equals: 'KEY'.