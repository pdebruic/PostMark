attachments
addAttachment: name content: contentString contentType: aContentType
	| attachment encodedStream baseStream |
	encodedStream := Base64MimeConverter mimeEncode: contentString readStream.
	attachment := JsonObject new.
	attachment at: 'Name' put: name.
	attachment at: 'ContentType' put: aContentType asString.
	attachment at: 'Content' put: encodedStream contents.
	
	(self at: #Attachments) ifNil: [ self at: #Attachments put: OrderedCollection new ].
	(self at: #Attachments) add: attachment.