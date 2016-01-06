tests
testUnsuccessfulLogin

	| anotherAccessor invalidLogin |
	"Some databases can't fail to log in."
	login database supportsAuthentication ifFalse: [^self].

	invalidLogin := GlorpDatabaseLoginResource defaultLogin copy.
	invalidLogin
		password: 'you will never ever guess this password';
		username: 'not a valid user name'.
	anotherAccessor := DatabaseAccessor forLogin: invalidLogin.

	self assert: anotherAccessor isLoggedIn not.
	anotherAccessor loginIfError: [:ex | ].
	Dialect isVisualAge		"The isLoggedIn is unreliable under VA, can return false positive"
		ifFalse: [self assert: anotherAccessor isLoggedIn not]
		ifTrue: [Transcript cr; show: self class name, '>>testUnsuccessfulLogin skips a trivial isLoggedIn check, saying it was unreliable under VA55, could return false positive, later versions not yet verified'].
	anotherAccessor logout.