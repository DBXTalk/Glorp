initialize-release
reset
	super reset.	
	preparedStatements release.
	self initializePreparedStatementCache.
	driverSession := nil.