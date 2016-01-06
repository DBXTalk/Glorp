accessing
vwEXDIConnectionClass
	^'InterBaseConnection' asQualifiedReference valueIfUndefinedLoadFrom: 'IBEXDI'