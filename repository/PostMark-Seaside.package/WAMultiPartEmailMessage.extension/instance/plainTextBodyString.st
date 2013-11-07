*postmark-seaside
plainTextBodyString
	| plainText |
	plainText := self parts detect: [ :each | each isPlainText ] ifNone: [ ^ '' ].
	^ plainText contentString