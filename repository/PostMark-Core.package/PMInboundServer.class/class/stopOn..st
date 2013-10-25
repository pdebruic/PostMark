as yet unclassified
stopOn: aPortNumber
	ZnServer managedServers
		do: [ :eachService | 
			eachService port = aPortNumber
				ifTrue: [ eachService stop ] ]