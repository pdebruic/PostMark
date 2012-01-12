private
simulateSendOf: aPMEmail
	aPMEmail jsonWriteOn: self debugStream.
	self debugStream cr.
	self debugStream flush.