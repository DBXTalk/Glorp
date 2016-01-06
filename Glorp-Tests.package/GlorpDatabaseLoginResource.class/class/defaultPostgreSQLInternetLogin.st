defaults
defaultPostgreSQLInternetLogin
	"To set the default database login to  PostgreSQL protocol 2.0 via socket, execute the following statement."
	"self defaultPostgreSQLInternetLogin."

	^DefaultLogin := (Login new)
		database: PostgreSQLPlatform new;
		username: 'guest';
		password: 'guest';
		connectString: 'store.cincomsmalltalk.com:5432_glorptest'.