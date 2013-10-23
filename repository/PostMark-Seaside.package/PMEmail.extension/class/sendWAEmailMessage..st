*postmark-seaside
sendWAEmailMessage: aWAEmailMessage
	| newMessage |
	newMessage := self new.
	newMessage
		to: aWAEmailMessage to;
		cc: aWAEmailMessage cc;
		bcc: aWAEmailMessage bcc;
		headers: aWAEmailMessage headers;
		subject: aWAEmailMessage subject;
		textBody: aWAEmailMessage body;
		from: aWAEmailMessage from;
		send