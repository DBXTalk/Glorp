login
loginIfError: aBlock

	self
		execute:
			[connection := ((Smalltalk at: #DBConnection) new)
				dsn: currentLogin connectString;
				uid: currentLogin username;
				pwd: currentLogin password;
				connect.]
		ifError: aBlock