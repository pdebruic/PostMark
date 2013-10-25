as yet unclassified
handleRequest: aRequest
	"PostMark should only be POSTing JSON data to this server"

	| jsonObj |
	aRequest method == #POST
		ifTrue: [ 
			jsonObj := Json readFrom: aRequest contents readStream.
			(jsonObj at: 'From') isEmptyOrNil
				ifFalse: [ 
					"do something with the email contents here.  PostMark expects an empty 200 return if the email delivery is successful"
					jsonObj explore.
					^ ZnResponse ok: nil ].
			^ ZnResponse serverError: nil ].
	^ ZnResponse badRequest: nil