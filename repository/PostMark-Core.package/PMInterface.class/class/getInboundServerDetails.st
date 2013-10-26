inbound
getInboundServerDetails
	| response jsonObj |
	response := ZnClient new
		beOneShot;
		contents: 'zinc needs an entity to set the contentType';
		headerAt: 'X-Postmark-Server-Token' put: self defaultApiKey;
		accept: ZnMimeType applicationJson;
		contentType: ZnMimeType applicationJson;
		get: self defaultApiUrl , 'server';
		response.
	response isSuccess
		ifTrue: [ 
			jsonObj := Json readFrom: response contents readStream.
			^ jsonObj ]
		ifFalse: [ PMException signal: response contents ]