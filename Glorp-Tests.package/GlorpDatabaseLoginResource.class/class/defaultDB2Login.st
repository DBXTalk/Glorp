defaults
defaultDB2Login
	"To set the default database login to Oracle, execute the following statement."
	"self defaultDB2Login."

	^DefaultLogin := (Login new)
		database: DB2Platform new;
		username: 'sames';
		password: 'sames';
		connectString: 'store'