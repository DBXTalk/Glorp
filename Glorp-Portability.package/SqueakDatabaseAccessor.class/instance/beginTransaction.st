transactions
beginTransaction
	self log: 'Begin Transaction'.
	isInTransaction := true.
	self logOnly ifTrue: [^self].
	connection execute: 'BEGIN TRANSACTION'