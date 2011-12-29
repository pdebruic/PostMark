testing
testHandle422Response
	| interface response |
	interface := PMInterface new.
	response := ZnResponse new
		statusLine: (ZnStatusLine code: 422);
		entity: (ZnStringEntity new
			contentType: ZnMimeType applicationJson;
			string: '{"ErrorCode": 405, "Message": "Not allowed to send"}' ) ;
		yourself.
	self 
		should: [ interface handleResponse: response ] 
		raise: PMException.
	
	[ interface handleResponse: response]
		on: PMException
		do: [:e | self assert: (e messageText includesSubString: 'Not allowed to send')]
	
	