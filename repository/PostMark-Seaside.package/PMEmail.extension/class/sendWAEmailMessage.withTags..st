*postmark-seaside
sendWAEmailMessage: aWAEmailMessage withTags: someTags
	| newMessage |
	newMessage := self new setMessageContentFrom: aWAEmailMessage.
	newMessage
		addTags: someTags;
		send