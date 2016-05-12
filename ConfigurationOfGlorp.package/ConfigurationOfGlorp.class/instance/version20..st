versions
version20: spec
	<version: '2.0' imports: #('2.0-baseline')>
	
	spec for: #common do: [
		spec blessing: #development.
		spec description: 'version 2.0 based on VW 8.0.1'.
		spec author: 'EstebanMaringolo'.
		spec package: 'Glorp' with: 'Glorp-EstebanMaringolo.124'.
		spec package: 'Glorp-Tests' with: 'Glorp-Tests-EstebanMaringolo.20'.
		spec package: 'Glorp-UntestedPlatforms' with: 'Glorp-UntestedPlatforms-EstebanMaringolo.3'. 
		spec package: 'Glorp-Portability' with: 'Glorp-Portability-EstebanMaringolo.6'. 
	]