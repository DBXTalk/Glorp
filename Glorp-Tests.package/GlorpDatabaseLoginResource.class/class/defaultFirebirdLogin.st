as yet unclassified
defaultFirebirdLogin
	"To set the default database login to Firebird, execute the following statement."
	"self defaultFirebirdLogin."

	^DefaultLogin := (Login new)
		database: FirebirdPlatform new;
		username: 'MyName';
		password: 'MyPassword';
		connectString: 'firebirdGlorpTestDB'