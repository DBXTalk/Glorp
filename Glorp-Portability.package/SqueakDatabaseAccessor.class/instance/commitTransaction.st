transactions
commitTransaction
	self log: 'Commit Transaction'.
	isInTransaction := false.
	self logOnly ifTrue: [^self].
	connection execute: 'COMMIT TRANSACTION'