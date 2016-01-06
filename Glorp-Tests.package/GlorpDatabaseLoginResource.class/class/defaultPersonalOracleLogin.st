as yet unclassified
defaultPersonalOracleLogin
	"To set the default database login to Oracle, execute the following statement."
	"self defaultPersonalOracleLogin."

	^DefaultLogin := (Login new)
		database: OraclePlatform new;
		username: 'system';
		password: 'manager';
		connectString: ''