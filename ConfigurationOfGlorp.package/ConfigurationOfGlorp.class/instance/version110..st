versions
version110: spec
	<version: '1.10' imports: #('1.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.10'.
		spec author: 'GuillermoPolito'.
		spec timestamp: '5/14/2015 20:35'.
		spec 
			package: 'Glorp' with: 'Glorp-GuillermoPolito.101';
			package: 'GlorpPharoCompatibility' with: 'GlorpPharoCompatibility-GuillermoPolito.6';
			package: 'GlorpAnalysis' with: 'GlorpAnalysis-GuillermoPolito.1';
			package: 'GlorpActiveRecord' with: 'GlorpActiveRecord-GuillermoPolito.2';
			package: 'GlorpTests' with: 'GlorpTests-GuillermoPolito.48';
			package: 'GlorpActiveRecordTests' with: 'GlorpActiveRecordTests-GuillermoPolito.2'. ].
