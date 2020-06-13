private
buildZnClientForContent: aString when: isTemplateEmail
	| body |
	body := ZnEntity with: aString type: ZnMimeType applicationJson.

	^ ZnClient new
		headerAt: 'X-Postmark-Server-Token' put: self apiKey;
		beOneShot;
		url: self apiUrl , (isTemplateEmail ifTrue:['/email/withTemplate'] ifFalse:['/email']);
		entity: body