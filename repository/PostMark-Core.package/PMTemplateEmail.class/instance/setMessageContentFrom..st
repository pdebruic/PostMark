initialization
setMessageContentFrom: aWAEmailMessage
	self
		toArray: aWAEmailMessage to;
		ccArray: aWAEmailMessage cc;
		bccArray: aWAEmailMessage bcc;
		addHeaders: aWAEmailMessage headers;
	
		addFrom: aWAEmailMessage from.
	aWAEmailMessage addPostMarkTemplateDataTo: self