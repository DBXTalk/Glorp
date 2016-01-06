login
loginIfError: aBlock
	| |
"	connection :=self connectionClass 
		name: currentLogin connectString
		alias: currentLogin connectString
		password: currentLogin password
		drive: 'c'
		comment: currentLogin connectString
		create: false."
	connection := self connectionClass
		logOnServer: currentLogin connectString
		 user: currentLogin username
		 password: currentLogin password
		 alias: currentLogin connectString.
	(connection isKindOf: Message)
		ifTrue: [^self errorBoxMessage: connection asString].
	connection start.