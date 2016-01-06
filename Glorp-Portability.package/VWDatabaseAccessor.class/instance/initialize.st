initialize-release
initialize
	super initialize.
	reusePreparedStatements := true.
	self initializePreparedStatementCache.