transactions
rollbackTransaction
	self log: 'Rollback Transaction'.
	isInTransaction := false.
	self logOnly ifTrue: [^self].
	self connection rollbackUnitOfWork.