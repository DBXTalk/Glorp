login
rollbackTransaction
	inTransaction := false.
	^connection rollback.