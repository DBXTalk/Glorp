as yet unclassified
defaultPostgreSQLLogin
	"To set the default database login to  PostgreSQL protocol 2.0 via socket, execute the following statement."
	"self defaultPostgreSQLLogin."

	^DefaultLogin := (Login new)
		database: PostgreSQLPlatform new;
		username: 'postgres';
		password: 'secret';
		connectString: 'localhost_test'.