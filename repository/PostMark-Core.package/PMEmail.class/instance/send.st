attachments
send
	"want to make sure it gets sent.  This may be bad if there are lots of emails and lots of errors.  "

	| success interface |
	interface := PMInterface new.
	success := interface send: self.
	[ success ]
		whileFalse: [ 
			(Delay forMilliseconds: 5000) wait.
			success := interface send: self ]