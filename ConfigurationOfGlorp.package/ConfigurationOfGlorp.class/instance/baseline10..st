baselines
baseline10: spec
	<version: '1.0-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/DBXTalk'.
		spec package: 'Glorp'.
		spec package: 'GlorpTests' with: [ spec requires: 'Glorp' ].
		
		spec group: 'default' with: #( 'Glorp' ).
		spec group: 'Dev' with: #( 'default' 'GlorpTests' ). ].