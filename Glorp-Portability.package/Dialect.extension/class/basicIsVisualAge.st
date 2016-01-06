*Glorp-Portability
basicIsVisualAge

	^ Smalltalk class name == #EsSmalltalkNamespace
	"	| sys |
	sys := Smalltalk at: #System ifAbsent: [^false].
	(sys respondsTo: #vmType) ifFalse: [^false].
	^sys vmType = 'ES'"