executing
newPreparedStatementFor: aCommand
	| newSession |
	newSession := self createSessionFor: aCommand.
	aCommand useBinding
		ifTrue: [newSession prepare: aCommand sqlString]
		ifFalse: [newSession prepareWithoutBinding: aCommand sqlString].
	^(GlorpPreparedStatement new)
		signature: aCommand signature;
		statement: newSession;
		busy: true.