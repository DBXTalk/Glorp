*Glorp-Portability
basicIsPharo

	| versionString |
	Smalltalk at: #SystemVersion ifPresent: [:cl |
		versionString := cl current version.
		^(versionString beginsWith: 'Pharo')
	].
	^false