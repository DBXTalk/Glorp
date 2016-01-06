transactions
commitTransaction
	self log: 'Commit Transaction'.
	self logOnly ifTrue: [^self].
	connection commitTxn