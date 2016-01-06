login
loginIfError: aBlock
	"If the Login is secure, call the connection in its equivalent pattern (#connect:), otherwise set its password and call via #connect."

	self log: 'Login'.
	self logOnly ifTrue: [^self].
	connection := self connectionClass new.
	connection initializeFromLogin: currentLogin.
	(connection respondsTo: #useStatementCaching:) ifTrue:
		[connection supportStatementCaching ifTrue:
			[connection useStatementCaching: true]].
	self initializeODBCForMultipleResultSets: connection.
	self
		execute:
			[self currentLogin secure
				ifTrue: [connection connect: currentLogin password]
				ifFalse: [connection connect].
			currentLogin database postLoginInitializeFromAccessor: self]
		ifError: aBlock.
	self log: 'Login finished'.