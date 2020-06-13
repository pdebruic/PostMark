public API
send: email
	"throws PMException if something goes wrong. returns true (success)/false (failure)"
	| client json |
	self developmentMode
		ifTrue: [ ^self simulateSendOf: email ].
	json := (GRCodec forEncoding:'utf-8') encode: (Json render: email).
	client := self buildZnClientForContent: json when:email isTemplateEmail.
	client post.
	
	^self handleResponse: client response.