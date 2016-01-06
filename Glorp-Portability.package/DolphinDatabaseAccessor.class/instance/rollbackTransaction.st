transactions
rollbackTransaction
	self log: 'Rollback Transaction'.
	self logOnly ifTrue: [^self].
	connection rollbackTxn