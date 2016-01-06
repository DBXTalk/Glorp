transactions
beginTransaction
	self log: 'Begin Transaction'.
	isInTransaction := true.
	self logOnly ifTrue: [^self].
	self connection beginUnitOfWork.