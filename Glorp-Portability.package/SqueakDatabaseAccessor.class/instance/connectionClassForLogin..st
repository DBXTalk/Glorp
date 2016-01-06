login
connectionClassForLogin: aLogin 
	aLogin database class == PostgreSQLPlatform
		ifTrue: [^ Smalltalk at: #PGConnection].
	self error: 'Unknown database: ' , aLogin database