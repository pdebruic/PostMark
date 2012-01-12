attachments
addAttachmentAndCompress: contentString archiveName: aString
	| baseStream  gzwStream |
	baseStream := RWBinaryOrTextStream on: String new.
	gzwStream := GZipWriteStream on: baseStream.
	gzwStream nextPutAll: contentString.
	gzwStream close.
	baseStream reset.
	
	^self addAttachment: aString content:  baseStream contents contentType: 'application/x-gzip'.