baselines
baseline11: spec
	<version: '1.1-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/DBXTalk'.
		spec package: 'Glorp'.
		spec package: 'GlorpPharoCompatibility'.
		spec package: 'GlorpAnalysis' with: [ spec requires: 'Glorp' ].
		spec package: 'GlorpActiveRecord' with: [ spec requires: #('Glorp' 'GlorpAnalysis') ].
		spec package: 'GlorpTests' with: [ spec requires: 'Glorp' ].
		spec package: 'GlorpActiveRecordTests' with: [ spec requires: #( 'Glorp' 'GlorpTests') ].
		
		spec group: 'default' with: #( 'Glorp' 'GlorpTests' 'GlorpPharoCompatibility'). 
	]