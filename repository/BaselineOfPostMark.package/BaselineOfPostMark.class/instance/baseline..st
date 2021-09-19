baselines
baseline: spec

	<baseline>
	self baselineJSON: spec.
	spec for: #common do: [ 
		spec
			baseline: 'Grease' with: [ 
				spec
					loads: #( 'Core' );
					repository: 'github://seasidest/grease:master/repository' ];
			baseline: 'Seaside3' with: [ 
			spec
				repository: 'github://seasidest/seaside:master/repository';
				loads: #( 'Base' 'Seaside-Email' ) ].

		spec
			package: 'PostMark-Core'
			with: [ spec requires: #( 'JSON' 'Grease' ) ];
			package: 'PostMark-Tests'
			with: [ spec requires: #( 'PostMark-Core' ) ];
			package: 'PostMark-Seaside'
			with: [ spec requires: #( 'PostMark-Core' 'Seaside3' ) ].
		spec
			group: 'default' with: #( 'Core' );
			group: 'Core' with: #( 'PostMark-Core' );
			group: 'Tests' with: #( 'PostMark-Tests' );
			group: 'PostMarkSeaside' with: #( 'PostMark-Seaside' ) ].
	spec for: #gemstone do: [ 
		spec baseline: 'ZincHTTPComponents' with: [ 
			spec
				loads: #( 'Zinc-HTTP' );
				repository: 'github://GsDevKit/zinc:gs_master/repository' ].
		spec
			package: 'PostMark-Core'
			with: [ spec requires: #( 'ZincHTTPComponents' ) ] ]