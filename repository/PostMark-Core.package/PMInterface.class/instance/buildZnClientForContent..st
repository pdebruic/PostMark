private
buildZnClientForContent: aString
	| body |
	body := ZnEntity with: aString type: ZnMimeType applicationJson.
	^ ZnClient new
		headerAt: 'X-Postmark-Server-Token' put: self apiKey;
		beOneShot;
		url: self apiUrl , '/email';
		entity: body