defaults
defaultPostgreSQLLoginForGlorpStore
	"To set the default database login to  PostgreSQL protocol 2.0 via socket, execute the following statement."
	"self defaultPostgreSQLLoginForGlorpStore."

	^DefaultLogin := (Login new)
		database: PostgreSQLPlatform new;
		username: 'store-glorp-test';
		password: 'simple';
		connectString: '192.168.0.18_store-glorp-test'.