as yet unclassified
errorsToCatch
	| pgError |
	pgError := Smalltalk at: #PostgreSQLEXDIException ifAbsent: [^Error].
	^Error, pgError.