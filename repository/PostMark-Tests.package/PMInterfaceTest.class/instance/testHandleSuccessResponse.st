testing
testHandleSuccessResponse
	| interface response |
	interface := PMInterface new.
	response := ZnResponse ok: (ZnStringEntity text: '').
	self assert: (interface handleResponse: response).