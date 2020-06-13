attachments
attachFile: aFSReference
	| mimeType |
	mimeType := (ZnMimeType forFileNameReturnMimeTypesOrDefault: aFSReference basename) first.
	^self addAttachment: aFSReference basename content: aFSReference readStream contents contentType: mimeType greaseString.