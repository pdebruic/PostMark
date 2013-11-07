*postmark-seaside
htmlBodyString
	| htmlPart |
	htmlPart := self parts detect: [ :each | each isHtml ] ifNone: [ ^ nil ].
	^ htmlPart contentString