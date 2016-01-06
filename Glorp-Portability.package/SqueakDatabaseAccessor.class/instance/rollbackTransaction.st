transactions
rollbackTransaction
	self log: 'Rollback Transaction'.
	isInTransaction := false.
	self logOnly ifTrue: [^self].
	connection execute: 'ROLLBACK TRANSACTION'