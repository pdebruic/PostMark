attachments
attachFile: aFSReference
	| mimeType |
	mimeType := (MIMEType forFileNameReturnMimeTypesOrDefault: aFSReference basename) first.
	^self addAttachment: aFSReference basename content: aFSReference readStream contents contentType: mimeType greaseString.