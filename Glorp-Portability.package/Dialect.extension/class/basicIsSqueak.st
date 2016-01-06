*Glorp-Portability
basicIsSqueak

	| versionString |
	Smalltalk at: #SystemVersion ifPresent: [:cl |
		versionString := cl current version.
		^(versionString beginsWith: 'Squeak')
	].
	^false