transactions
rollbackTransaction
	self log: 'Rollback Transaction'.
	self logOnly ifTrue: [^self].
	mutex critical: [connection rollback]