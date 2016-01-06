login
connectionClassForLogin: aLogin 
	aLogin database isDB2Platform ifTrue: [^ Smalltalk at: #AbtIbmCliDatabaseManager].
	aLogin database class == OraclePlatform 
		ifTrue: [^Smalltalk at: #AbtOracle10DatabaseManager].
	aLogin database isODBCPlatform 
		ifTrue: [^Smalltalk at: #AbtOdbcDatabaseManager].
	aLogin database isPostgreSQLPlatform 
		ifTrue: [self error: 'PostgreSQL is not yet supported under VA'].
	self error: 'Unknown database platform' , aLogin database printString