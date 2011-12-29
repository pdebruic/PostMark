testing
testSend
	| interface email |
	email := PMEmail new.
	email from: 'francois@wapict.be'.
	email to: #('tulipe.moutarde@gmail.com' 'tulipe@yopmail.com').
	email subject: 'Hello!'.
	email htmlBody: '<strong>Blop</strong>'.
	email textBody: 'Blop'.
	
	interface := PMInterface new.
	self deny: interface developmentMode.
	interface debugStream: ('' writeStream).
	
	interface send: email.
	self assert: (Json render: email) equals: interface debugStream contents trimBoth.