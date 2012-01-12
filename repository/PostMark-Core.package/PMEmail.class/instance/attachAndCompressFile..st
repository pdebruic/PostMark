attachments
attachAndCompressFile: aFSReference
	| mimeType archiveName |
	archiveName := aFSReference resolve basename, '.zip'.
	mimeType := (MIMEType forFileNameReturnMimeTypesOrDefault: aFSReference basename) first.
	^self addAttachmentAndCompress:  aFSReference readStream contents asString archiveName: archiveName.