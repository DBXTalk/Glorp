accessing
connectionClassForLogin: aLogin
	aLogin database class == OraclePlatform
		ifTrue: [^Smalltalk at: #OracleOCIDatabase ifAbsent: [self error: 'no such driver']].
	aLogin database isODBCPlatform ifTrue: [^Smalltalk at: #ODBCDatabase].
	self error: 'Unknown database: ' , aLogin database name.