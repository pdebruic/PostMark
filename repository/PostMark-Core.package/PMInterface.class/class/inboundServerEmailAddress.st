inbound
inboundServerEmailAddress
	^ (self getInboundServerDetails at: 'InboundHash') , '@inbound.postmarkapp.com'