login
loginIfError: aBlock 
	self log: 'Login'.
	self logOnly ifTrue: [^self].
	connection := self connectionClass new.
	connection connectionArgs: self connectionArgsFromCurrentLogin.
	self
		execute: [connection startup]
		ifError: aBlock.
	self log: 'Login finished'