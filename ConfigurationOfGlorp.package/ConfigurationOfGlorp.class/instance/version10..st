versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline')>
	
	spec for: #common do: [
		spec blessing: #stable.
		spec package: 'Glorp' with: 'Glorp-GuillermoPolito.72'. 
		spec package: 'GlorpTests' with: 'GlorpTests-GuillermoPolito.22'. ]