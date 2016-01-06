accessing
currentLogin: aLogin
	self reusePreparedStatements: aLogin database reusePreparedStatements.
	super currentLogin: aLogin.