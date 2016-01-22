*Glorp-UntestedPlatforms
defaultAccessLogin
	"To set the default database login for Access, execute the following statement."
	"self defaultAccessLogin."

	^DefaultLogin := (Login new)
		database: AccessPlatform new;
		username: 'whatever';
		password: '';
		connectString: 'access'