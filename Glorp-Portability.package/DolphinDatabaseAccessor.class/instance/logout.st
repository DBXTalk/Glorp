login
logout

	connection notNil
		ifTrue:
			[[connection close.] ensure: [connection := nil]].