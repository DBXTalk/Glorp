transactions
commitTransaction
	self log: 'Commit Transaction'.
	self logOnly ifTrue: [^self].
	mutex critical: [connection commit]