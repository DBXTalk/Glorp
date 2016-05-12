baselines
baseline20: spec

	<version: '2.0-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec description: 'New baseline 2.0 for new port based on VW Glorp version 8.0.1'.
			spec author: 'EstebanMaringolo'.
			spec timestamp: '4/28/2016 16:28'.
			spec repository: 'http://www.smalltalkhub.com/mc/DBXTalk/Glorp/main'.
			spec package: 'Glorp'.
			spec postLoadDoIt: #resetDialect.
			spec package: 'Glorp-Tests'.
			spec package: 'Glorp-UntestedPlatforms'.
			spec package: 'Glorp-Portability'.
			spec
				group: 'core' with: #('Glorp');
				group: 'default' with: #('Glorp' 'Glorp-Tests');
				group: 'ALL' with: #('Glorp' 'Glorp-Tests' 'Glorp-UntestedPlatforms' 'Glorp-Portability') ]