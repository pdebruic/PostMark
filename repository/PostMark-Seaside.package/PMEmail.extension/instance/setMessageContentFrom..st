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
			aWAEmailMessage plainTextBodyString isEmptyOrNil
				ifFalse: [ self textBody: aWAEmailMessage plainTextBodyString ].
			aWAEmailMessage htmlBodyString isEmptyOrNil
				ifFalse: [ self htmlBody: aWAEmailMessage htmlBodyString ] ]
		ifFalse: [ self textBody: aWAEmailMessage body ]