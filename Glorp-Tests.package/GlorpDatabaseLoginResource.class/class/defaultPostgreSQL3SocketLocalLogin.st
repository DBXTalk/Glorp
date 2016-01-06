as yet unclassified
defaultPostgreSQL3SocketLocalLogin
	"To set the default database login to PostgreSQL protocol 3.0, execute the following statement.  The setting of a schema is not needed for GlorpTest tests but is needed for ActiveRecordTest tests."
	"self defaultPostgreSQL3SocketLocalLogin."

	^DefaultLogin := (Login new)
		database: PostgresSocketPlatform new;
		schema: 'public';
		username: 'MyName';
		password: 'MyPassword';
		connectString: 'localhost:5432_GlorpTestDB'.