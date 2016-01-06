login
logout
	self isLoggedIn ifFalse: [^self].
	self log: 'Logout'.
	self logOnly ifTrue: [^self].
	self execute: [connection terminate].
	self log: 'Logout finished'