accessing
apiKey
	^ apiKey ifNil: [ apiKey := self defaultApiKey ]