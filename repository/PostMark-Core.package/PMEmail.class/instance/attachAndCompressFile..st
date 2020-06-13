attachments
attachAndCompressFile: aFSReference
	| mimeType archiveName |
	archiveName := aFSReference resolve basename, '.zip'.
	mimeType := (ZnMimeType forFilenameExtension:  aFSReference extension) first.
	^self addAttachmentAndCompress:  aFSReference readStream contents asString archiveName: archiveName.