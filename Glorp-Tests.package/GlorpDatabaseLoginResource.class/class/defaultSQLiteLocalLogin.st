defaults
defaultSQLiteLocalLogin
	"To set the default database login to SQLite, change the connectString to an appropriate path and execute the following statement."
	"self defaultSQLiteLocalLogin."

	^DefaultLogin := (Login new)
		database: SQLite3Platform new;
		username: '';
		password: '';
		connectString: 'C:\somePath\someData\glorpTestSQLite.db'.