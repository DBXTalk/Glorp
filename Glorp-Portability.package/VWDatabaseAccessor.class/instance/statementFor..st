executing
statementFor: aCommand
	^self reusePreparedStatements
		ifTrue: [self preparedStatementFor: aCommand]
		ifFalse: [self newPreparedStatementFor: aCommand].