login
isLoggedIn

	connection isNil ifTrue: [^false].
	^connection isActive