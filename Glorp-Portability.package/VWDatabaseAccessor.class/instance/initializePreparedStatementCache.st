initialize-release
initializePreparedStatementCache

	| policy cache |
	policy := CachePolicy default.
	policy numberOfElements: 20.
	policy expiryAction: #notifyAndRemove.
	preparedStatements := CacheManager new.
	cache := preparedStatements cacheForClass:GlorpPreparedStatement.
	cache cachePolicy: policy.