baselines
baseline13: spec
	"Migration to smalltalkhub"
	<version: '1.3-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.smalltalkhub.com/mc/DBXTalk/Glorp/main'.
		spec package: 'Glorp'.
		spec postLoadDoIt: #resetDialect.
		spec package: 'GlorpPharoCompatibility'.
		spec package: 'GlorpAnalysis' with: [ spec requires: 'Glorp' ].
		spec package: 'GlorpActiveRecord' with: [ spec requires: #('Glorp' 'GlorpAnalysis') ].
		spec package: 'GlorpTests' with: [ spec requires: 'Glorp' ].
		spec package: 'GlorpActiveRecordTests' with: [ spec requires: #( 'Glorp' 'GlorpTests') ].
		
		spec 
			group: 'default' with: #( 'Glorp' 'GlorpTests' 'GlorpPharoCompatibility');
			group: 'DeveloperGroup' with: 'ALL'.
	]