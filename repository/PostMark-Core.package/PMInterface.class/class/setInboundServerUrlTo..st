inbound
setInboundServerUrlTo: aUrlorString
	| response jsonObj entity |
	jsonObj := JsonObject new.
	jsonObj at: 'InboundHookUrl' put: aUrlorString.
	entity := (ZnStringEntity type: ZnMimeType applicationJson) string: jsonObj asJsonString.
	response := ZnClient new
		beOneShot;
		entity: entity;
		headerAt: 'X-Postmark-Server-Token' put: self defaultApiKey;
		accept: ZnMimeType applicationJson;
		url: 'http://api.postmarkapp.com/server';
		post;
		response.
	response isSuccess
		ifTrue: [ 
			jsonObj := Json readFrom: response contents readStream.
			^ jsonObj ]
		ifFalse: [ PMException signal: response contents ]