defaults
defaultPostgreSQLLoginForVPN
	"To set the default database login to  PostgreSQL protocol 2.0 via socket, execute the following statement."
	"self defaultPostgreSQLLoginForVPN."

	^DefaultLogin := (Login new)
		database: PostgreSQLPlatform new;
		username: 'dbadmin';
		password: 'dbadmin';
		connectString: 'curly.parcplace.com:5432_template1'.