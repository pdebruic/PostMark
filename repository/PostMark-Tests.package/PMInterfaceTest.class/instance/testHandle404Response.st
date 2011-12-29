testing
testHandle404Response
	| interface response |
	interface := PMInterface new.
	response := ZnResponse notFound: 'http://blop.com/azert'.
	self 
		should: [ interface handleResponse: response ] 
		raise: PMException.