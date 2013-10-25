*postmark-seaside
addFrom: aStringOrAddress
	self
		from:
			(aStringOrAddress isString
				ifTrue: [ aStringOrAddress ]
				ifFalse: [ aStringOrAddress address greaseString ])