*postmark-seaside
sendWAEmailMessage: aWAEmailMessage withTags: someTags
	| newMessage |
	newMessage := self new.
	newMessage
		toArray: aWAEmailMessage to;
		ccArray: aWAEmailMessage cc;
		bccArray: aWAEmailMessage bcc;
		addHeaders: aWAEmailMessage headers;
		subject: aWAEmailMessage subject;
		textBody: aWAEmailMessage body;
		from: aWAEmailMessage from address greaseString ;
		addTags: someTags;
		send