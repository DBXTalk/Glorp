as yet unclassified
defaultOracleLogin2
	"To set the default database login to Oracle, execute the following statement."
	"self defaultOracleLogin2."

	^DefaultLogin := (Login new)
		database: OraclePlatform new;
		username: 'system';
		password: 'password';
		connectString: ''