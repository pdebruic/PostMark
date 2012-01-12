public API
send: email
	"throws PMException if something goes wrong. returns true (success)/false (failure)"
	| client json |
	self developmentMode
		ifTrue: [ ^self simulateSendOf: email ].
	json := GRPharoUtf8Codec new encode: (Json render: email).
	client := self buildZnClientForContent: json.
	client post.
	
	^self handleResponse: client response.