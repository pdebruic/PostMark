*postmark-seaside
sendViaPostMarkTagged: someTags
	| cls |
	cls := self pmTemplateName isNil
		ifTrue: [ PMEmail ]
		ifFalse: [ PMTemplateEmail ].
	cls sendWAEmailMessage: self withTags: someTags