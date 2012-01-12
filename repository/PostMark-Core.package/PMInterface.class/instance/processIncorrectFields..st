private
processIncorrectFields: aString
	| json |
	json := Json readFrom: aString readStream.
	PMException signal: 'Error : ' , (json at: 'ErrorCode') printString , ' - ' , (json at: 'Message').