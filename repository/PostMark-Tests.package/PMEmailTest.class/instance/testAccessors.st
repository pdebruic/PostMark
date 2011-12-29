testing
testAccessors
	| email |
	email := PMEmail new.
	email from: 'francois@wapict.be'.
	email to: #('tulipe.moutarde@gmail.com' 'tulipe@yopmail.com').
	email subject: 'Hello!'.
	email htmlBody: '<strong>Blop</strong>'.
	email textBody: 'Blop'.
	
	self assert: email textBody equals: 'Blop'.
	self assert: email subject equals: 'Hello!'.