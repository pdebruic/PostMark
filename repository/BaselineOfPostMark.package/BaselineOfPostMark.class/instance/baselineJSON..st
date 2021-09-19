baselines
baselineJSON: spec

	spec for: #squeak do: [ 
		spec project: 'JSON' with: [ 
			spec
				className: 'ConfigurationOfJSON';
				versionString: #stable;
				loads: #( 'default' );
				repository: 'http://smalltalkhub.com/mc/PharoExtras/JSON/main' ] ].
	spec for: #( #pharo #gemstone ) do: [ 
		spec
			baseline: 'JSON'
			with: [ spec repository: 'github://pdebruic/JSON:main/repository' ] ]