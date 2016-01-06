transactions
isInTransaction
	"This needs a logOnly guard but what the appropriate return value should be is less obvious than for the other guards in this class.  Returning true avoids code that would otherwise seek to create a transaction."

	self logOnly ifTrue: [^true].
	^connection inTransactionMode