as yet unclassified
defaultPostgreSQLLocalLogin
	"To set the default database login to PostgreSQL protocol 2.0 via socket, execute the following statement.  The setting of a schema is not needed for GlorpTest tests but is needed for ActiveRecordTest tests."
	"self defaultPostgreSQLLocalLogin."

	^DefaultLogin := (Login new)
		database: PostgreSQLPlatform new;
		schema: 'public';
		username: 'MyName';
		password: 'MyPassword';
		connectString: 'localhost:5432_GlorpTestDB'.