initialize-release
initialize
	super initialize.
	reusePreparedStatements := false.
	isInTransaction := false