as yet unclassified
defaultPostgreSQL3LibpqLocalLogin
	"Execute the following statement to set the default database login to PostgreSQL protocol 3.0 via the C API (not socket, so, as for Oracle and other databases, the local client library must be on the path).  The setting of a schema is not needed for GlorpTest tests but is needed for ActiveRecordTest tests."
	"self defaultPostgreSQL3LibpqLocalLogin."

	^DefaultLogin := (Login new)
		database: PostgresLibpqPlatform new;
		schema: 'public';
		username: 'MyName';
		password: 'MyPassword';
		connectString: 'localhost:5432_GlorpTestDB'.