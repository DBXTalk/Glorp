transactions
commitTransaction
	self log: 'Commit Transaction'.
	isInTransaction := false.
	self logOnly ifTrue: [^self].
	self connection commitUnitOfWorkIfError: 
			[:err |
			self log: 'Commit Transaction failed.'. 
			self connection autoCommit: true.
			self todo: 'Need to handle this error somehow....'.
			"errorBlock value: err"].