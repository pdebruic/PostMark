*postmark-seaside
setMessageContentFrom: aWAEmailMessage
	self
		toArray: aWAEmailMessage to;
		ccArray: aWAEmailMessage cc;
		bccArray: aWAEmailMessage bcc;
		addHeaders: aWAEmailMessage headers;
		subject: aWAEmailMessage subject;
		addFrom: aWAEmailMessage from.
	aWAEmailMessage isMultipart
		ifTrue: [ 
			self
				textBody: aWAEmailMessage plainTextBodyString;
				htmlBody: aWAEmailMessage htmlBodyString ]
		ifFalse: [ self textBody: aWAEmailMessage body ]