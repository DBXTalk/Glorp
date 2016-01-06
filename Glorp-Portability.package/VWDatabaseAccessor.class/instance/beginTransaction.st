transactions
beginTransaction
	self log: 'Begin Transaction'.
	self logOnly ifTrue: [^self].
	mutex critical: [connection begin]