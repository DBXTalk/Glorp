type helpers
typesWithValues
	self nclob.
	self ntext.
	super typesWithValues.
	types removeKey: #nvarchar ifAbsent: [].
	types removeKey: #nchar ifAbsent: [].
	^types