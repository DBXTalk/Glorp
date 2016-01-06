*Glorp-Portability
basicIsVisualWorks

	^ Smalltalk class name == #NameSpace
	"Smalltalk class selectors do: [ :s | 
		(s == #versionName and: [ (Smalltalk versionName copyFrom: 1 to: 11) = 'VisualWorks']) 
		    ifTrue: [^true]].
	^false"