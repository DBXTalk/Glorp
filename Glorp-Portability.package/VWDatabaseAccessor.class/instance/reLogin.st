login
reLogin
	"Attempt to re-login to a database that's not responding. Give it a maximum of 5 attempts"
	| attempts |
	attempts := 0.
	[attempts < 5 and: [self isLoggedIn not]] whileTrue: [
		attempts := attempts + 1.
		self loginIfError: [:ex | nil]].