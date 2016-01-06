login
logout
	self isLoggedIn ifFalse: [^self].
	self log: 'Logout'.
	self logOnly ifTrue: [^self].
	self execute: [connection disconnect. self reset] ifError: [:ex | ex return: nil].
	self log: 'Logout finished'