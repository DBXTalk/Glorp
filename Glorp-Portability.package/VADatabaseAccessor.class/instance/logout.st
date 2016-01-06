login
logout
	self isLoggedIn ifFalse: [^self].
	self log: 'Logout'.
	self logOnly ifTrue: [^self].
	"disconnectIfError: doesn't properly catch errors."
	[
	[connection disconnectIfError: [:ex | self logError: ex]]
		ensure:	[connection := nil]]
		  on: Dialect error
		  do: [:ex | ex return: nil].
	self log: 'Logout finished'