as yet unclassified
startOn: aPort
	| server |
	self stopOn: aPort.
	server := ZnServer startOn: aPort.
	server register.
	server delegate: self