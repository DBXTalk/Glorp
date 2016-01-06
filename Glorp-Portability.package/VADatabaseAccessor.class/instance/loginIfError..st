login
loginIfError: aBlock 
	"
		This method creates a NEW database connection.
	"

	| dbMgrClass anAbtDatabaseLogonSpec anAbtDatabaseConnectionSpec aliasNameString baseAliasName |
	self log: 'Login'.
	self logOnly ifTrue: [^self].
	aliasNameString := baseAliasName := currentLogin connectString.

	"
		We try to generate a unique alias name to get a new connection and to 
		prevent the normal VAST behaviour to reuse a connection
	"
	
	[((Smalltalk at: #AbtDbmSystem) 
		activeDatabaseConnectionWithAlias: aliasNameString) notNil] 
			whileTrue: 
				[aliasNameString := baseAliasName , Time millisecondClockValue printString].


	"
		Get the native VA class responsible for doing the work against the
		three special connections available in VA
	"
	dbMgrClass := self connectionClass.

	"
		Get the logon specification for the database ... do not use
		any server information
	"
	anAbtDatabaseLogonSpec := (Smalltalk at: #AbtDatabaseLogonSpec) 
				id: currentLogin username
				password: currentLogin password
				server: self serverName.

	"	
		Get the specification for the connection ... 
   "
	anAbtDatabaseConnectionSpec := (Smalltalk at: #AbtDatabaseConnectionSpec) 
				forDbmClass: dbMgrClass
				dataSourceName: self databaseName.
	connection := anAbtDatabaseConnectionSpec 
				connectUsingAlias: aliasNameString
				logonSpec: anAbtDatabaseLogonSpec
				ifError: 
					[:error | 
					"throw away the connection ..."
					connection := nil.
					aBlock value: error].
	connection isNil ifFalse: [
		connection databaseMgr errorBlock: [:err | self externalDatabaseErrorSignal signalWith: err]].