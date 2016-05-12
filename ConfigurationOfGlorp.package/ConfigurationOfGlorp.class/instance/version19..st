versions
version19: spec
	<version: '1.9' imports: #('1.3-baseline')>
	
	spec for: #common do: [
		spec blessing: #stable.
		spec package: 'Glorp' with: 'Glorp-TorstenBergmann.94'.
		spec package: 'GlorpAnalysis' with: 'GlorpAnalysis-GuillermoPolito.1'.
		spec package: 'GlorpActiveRecord' with: 'GlorpActiveRecord-GuillermoPolito.1'. 
		spec package: 'GlorpActiveRecordTests' with: 'GlorpActiveRecordTests-GuillermoPolito.1'. 
		spec package: 'GlorpPharoCompatibility' with: 'GlorpPharoCompatibility-GuillermoPolito.6'.
		spec package: 'GlorpTests' with: 'GlorpTests-GuillermoPolito.40'. ]